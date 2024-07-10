import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class diceRoller extends StatefulWidget {
  const diceRoller({super.key});
  @override
  State<diceRoller> createState() {
    return _diceRollerState();
  }
}

class _diceRollerState extends State<diceRoller> {
  var activeDiceImage = 'Assets/dice-images/dice-2.png';

  void rollDice() {
    var diceRoll = randomizer.nextInt(6) + 1;
    setState(() {
      activeDiceImage = 'Assets/dice-images/dice-$diceRoll.png';
    });

    print('Changing image...');
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: rollDice,
            child: const Text('Roll Dice'),
            style: TextButton.styleFrom(
                foregroundColor: Color.fromARGB(255, 231, 243, 16),
                textStyle: TextStyle(fontSize: 28),
                padding: EdgeInsets.only(top: 20))),
      ],
    );
  }
}
