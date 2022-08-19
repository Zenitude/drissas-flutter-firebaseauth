// ignore_for_file: avoid_print

library form_component;

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FormSection extends StatefulWidget {
  const FormSection({Key? key}) : super(key: key);

  @override
  State<FormSection> createState() {
    return _FormSectionState();
  }
}

class _FormSectionState extends State<FormSection> {
  TextEditingController mailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;

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
                      'Connexion',
                      style: TextStyle(color: Colors.redAccent),
                    ),
                  ),
                ),
                onPressed: () {
                  loginToFirebase(mailController.text.trim(), passwordController.text.trim());
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void loginToFirebase(String email, String password) {
    try {
      auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) {
        print(value.toString());
      });
    } catch (error) {
      print(error.toString());
    }
  }
}
