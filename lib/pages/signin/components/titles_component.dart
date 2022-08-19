library titles_component;

import 'package:flutter/material.dart';

class TitlesSection extends StatelessWidget {
  const TitlesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: 
      [
        SizedBox(
          width: 280,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                'Firebase',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40
                ),
              ),
              Text(
                'Login',
                style: TextStyle(
                  color: Colors.redAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  fontFamily: 'arial'
                ),
              ),
            ],
          ),
        ),
        const Text(
          'Connectez-vous avec vos identifiants',
          style: TextStyle(
            color: Colors.redAccent,
          ),
        )
      ],
    );
  }
}
