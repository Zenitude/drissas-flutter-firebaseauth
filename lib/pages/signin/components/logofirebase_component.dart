library logofirebase_component;

import 'package:flutter/material.dart';

class LogoFirebase extends StatelessWidget
{
  const LogoFirebase({Key? key}) : super(key: key);
  
  @override 
  Widget build(BuildContext context)
  {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
        child: Container(
          width: 125,
          height: 125,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.amberAccent,
              width: 10,
              style: BorderStyle.solid
            ),
            borderRadius: BorderRadius.circular(30) 
          ),
          child: const Image(
            fit: BoxFit.cover,
            image: AssetImage(
              'images/iconFirebase.png'
            )
          ),
        ),
      ),
    );
  }
}