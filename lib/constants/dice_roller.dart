import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_udemy/constants/styled_text.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int diceFace = 1;

  void _rollDice() {
    setState(() {
      diceFace = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          "assets/images/dice/dice-$diceFace.png",
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: _rollDice,
          autofocus: true,
          clipBehavior: Clip.antiAlias,
          child: const StyledText(
            text: "Roll The Dice",
          ),
        ),
      ],
    );
  }
}
