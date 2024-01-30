import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollState();
  }
}

class _DiceRollState extends State<DiceRoller> {
  var defaultDice = 'assets/dice-images/dice-1.png';
  var currentDice = 2;

  void rollDice() {
    setState(
      () {
        currentDice = Random().nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          defaultDice = 'assets/dice-images/dice-$currentDice.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            //padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 25),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
