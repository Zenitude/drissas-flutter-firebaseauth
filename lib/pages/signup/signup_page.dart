// ignore_for_file: avoid_print

library signup_page;

import 'package:flutter/material.dart';

import 'package:my_app/pages/signup/components/titles_component.dart';
import 'package:my_app/pages/signup/components/form_component.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() {
    return _SignUpPageState();
  }
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: const BoxDecoration(color: Colors.amber),
      child: Column(
        children: const [
          TitlesSection(),
          FormSection(),
        ],
      ),
    );
  }
}
