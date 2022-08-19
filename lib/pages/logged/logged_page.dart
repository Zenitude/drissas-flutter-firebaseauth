// ignore_for_file: non_constant_identifier_names, avoid_print

library logged_page;

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoggedPage extends StatefulWidget {
  const LoggedPage({Key? key}) : super(key: key);

  @override
  State<LoggedPage> createState() {
    return _LoggedPageState();
  }
}

class _LoggedPageState extends State<LoggedPage> {
  FirebaseAuth auth = FirebaseAuth.instance;
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  final User? currentUser = FirebaseAuth.instance.currentUser;
  String userEmail = 'En cours de chargement';

  @override
  void initState() {
    super.initState();
    if (currentUser!.email != null) {
      userEmail = currentUser!.email!;
    }
  }

  @override
  Widget build(BuildContext context) {
    authData(String subtitle, String title) {
      return ListTile(
          title: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          subtitle: Text(
            subtitle,
            style: const TextStyle(fontSize: 12),
          ));
    }

    userData(String userId, String chanel, String subtitle) {
      return FutureBuilder<DocumentSnapshot>(
          future: users.doc(userId).get(),
          builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
            Map<String, dynamic> data =
                snapshot.data!.data() as Map<String, dynamic>;
            return ListTile(
              title : Text(
                data[chanel],
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subtitle: Text(
                subtitle,
                style: const TextStyle(fontSize: 12),
              ),
            );
          });
    }

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          centerTitle: true,
          title: const Text(
            'Firebase Login',
          )),
      body: Container(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              authData(currentUser!.uid, 'Identifiant Firebase'),
              authData(currentUser!.email!, 'Adresse email'),
              userData(currentUser!.uid, 'peudo', 'Pseudo'),
              userData(currentUser!.uid, 'birthdate', 'Date de naissance'),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(0),
                        textStyle: const TextStyle(color: Colors.white),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30)))),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      width: 280,
                      height: 40,
                      child: const Center(
                        child: Text(
                          'Déconnexion',
                        ),
                      ),
                    ),
                    onPressed: () {
                      deconnectionFirebase();
                    }),
              ),
            ],
          )),
    );
  }

  deconnectionFirebase() {
    try {
      auth.signOut;
    } catch (error) {
      print(error.toString());
    }
  }
}
