library home_page;

import 'package:flutter/material.dart';
import 'package:my_app/widgets/appbar_widget.dart';
import 'package:my_app/pages/signup/signup_page.dart';
import 'package:my_app/pages/signin/signin_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  static const List<Widget> _optionsPage = <Widget>[
    SignInPage(),
    SignUpPage(),
  ];

  static const List<Widget> _titlesPage = <Widget>[
    Tab(child: Text('Connexion')),
    Tab(child: Text('Inscription')),
  ];

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: MyAppBar(title: 'Firebase Login', tabsName: _titlesPage),
        body: TabBarView(
          children: _optionsPage,
        ),
      ),
    );
  }
}