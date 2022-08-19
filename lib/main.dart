// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:my_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:my_app/pages/home/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_app/pages/logged/logged_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseAuth auth = FirebaseAuth.instance;
  auth.authStateChanges().listen((User? user) {
    if (user == null) {
      print('Utilisateur non connecté');
      runApp(const MyAppNotLogged());
    } else {
      print('Utilisateur connecté: ${user.email!}');
      runApp(const MyAppLogged());
    }
  });
}

class MyAppNotLogged extends StatelessWidget {
  const MyAppNotLogged({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class MyAppLogged extends StatelessWidget {
  const MyAppLogged({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoggedPage(),
    );
  }
}
