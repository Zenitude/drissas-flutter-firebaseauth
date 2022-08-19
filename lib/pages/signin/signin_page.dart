library signin_page;

import 'package:flutter/material.dart';

import 'package:my_app/pages/signin/components/logofirebase_component.dart';
import 'package:my_app/pages/signin/components/titles_component.dart';
import 'package:my_app/pages/signin/components/form_component.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() {
    return _SignInPageState();
  }
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.amber),
      child: Column(
        children: const [
          LogoFirebase(),
          TitlesSection(),
          FormSection(),
        ],
      ),
    );
  }
}
