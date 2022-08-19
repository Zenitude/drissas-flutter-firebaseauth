library body_home_component;

import 'package:flutter/material.dart';

class BodyHome extends StatefulWidget {
  const BodyHome({Key? key}) : super(key: key);

  @override
  State<BodyHome> createState() {
    return _BodyHomeState();
  }
}

class _BodyHomeState extends State<BodyHome> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      padding: const EdgeInsets.fromLTRB(15, 50, 15, 0),
      child: const Text('Hello World'),
    ));
  }
}
