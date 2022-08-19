// ignore_for_file: avoid_print

library form_component;

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FormSection extends StatefulWidget {
  const FormSection({Key? key}) : super(key: key);

  @override
  State<FormSection> createState() {
    return _FormSectionState();
  }
}

class _FormSectionState extends State<FormSection> {
  TextEditingController userController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController birthdateController = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Center(
        child: Form(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(0),
                width: 270,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    border: Border.all(
                        color: Colors.white.withOpacity(0.2),
                        width: 2,
                        style: BorderStyle.solid)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: const Icon(
                          Icons.verified_user_outlined,
                          color: Colors.redAccent,
                        )),
                    SizedBox(
                      width: 225,
                      height: 40,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        textAlignVertical: TextAlignVertical.center,
                        obscureText: false,
                        controller: userController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Pseudo',
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(0),
                width: 270,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    border: Border.all(
                        color: Colors.white.withOpacity(0.2),
                        width: 2,
                        style: BorderStyle.solid)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: const Icon(
                          Icons.people_outline,
                          color: Colors.redAccent,
                        )),
                    SizedBox(
                      width: 225,
                      height: 40,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        textAlignVertical: TextAlignVertical.center,
                        obscureText: false,
                        controller: mailController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Adresse email',
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(0),
                width: 270,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    border: Border.all(
                        color: Colors.white.withOpacity(0.2),
                        width: 2,
                        style: BorderStyle.solid)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: const Icon(
                          Icons.lock_outline,
                          color: Colors.redAccent,
                        )),
                    SizedBox(
                      width: 225,
                      height: 40,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        textAlignVertical: TextAlignVertical.center,
                        obscureText: true,
                        controller: passwordController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Mot de passe',
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(0),
                width: 270,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    border: Border.all(
                        color: Colors.white.withOpacity(0.2),
                        width: 2,
                        style: BorderStyle.solid)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: const Icon(
                          Icons.calendar_month_outlined,
                          color: Colors.redAccent,
                        )),
                    SizedBox(
                      width: 225,
                      height: 40,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        textAlignVertical: TextAlignVertical.center,
                        obscureText: false,
                        controller: birthdateController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Date de naissance',
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: Container(
                  width: 280,
                  height: 40,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: const Center(
                    child: Text(
                      'Inscription',
                      style: TextStyle(color: Colors.redAccent),
                    ),
                  ),
                ),
                onPressed: () {
                  signUpToFirebase(
                      mailController.text.trim(),
                      passwordController.text.trim(),
                      userController.text.trim(),
                      birthdateController.text.trim());
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void signUpToFirebase(
      String mailUser, String passwordUser, String pseudo, String birthdate) {
    try {
      auth
          .createUserWithEmailAndPassword(email: mailUser, password: passwordUser)
          .then((value) {
        print(value.user!.uid);
        //addUserToFirestore(value.user!.uid, pseudo, birthdate);
      });
    } catch (error) {
      print(error.toString());
    }
  }

  Future<void> addUserToFirestore(
      String userId, String pseudo, String birthdate) {
    return firestore.collection('users').doc(userId).set({
      "pseudo": pseudo,
      "birthdate": birthdate,
    }).then((value) {
      print("Utilisateur ajouté");
    }).catchError(
      (error) {
        print("Erreur : $error");
      }
    );
  }
}
