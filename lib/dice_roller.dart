import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var dotCount = 1;

  void changeDice() {
    setState(() {
      dotCount = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$dotCount.png',
          width: 200,
        ),
        TextButton(
          onPressed: changeDice,
          child: const Text('Change Dice'),
        )
      ],
    );
  }
}
