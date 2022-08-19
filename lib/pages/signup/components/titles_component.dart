library titles_component;

import 'package:flutter/material.dart';

class TitlesSection extends StatelessWidget {
  const TitlesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const
        [
          Text(
            'Créez-vous un compte',
            style: TextStyle(
              color: Colors.redAccent,
            ),
          )
        ],
      ),
    );
  }
}
