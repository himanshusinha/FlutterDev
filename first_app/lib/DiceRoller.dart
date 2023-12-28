import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var imageAssets = 'assets/images/dice-1.png';

  rollDice() {
    var randomNumber = Random().nextInt(6) + 1;
    setState(() {
      imageAssets = 'assets/images/dice-$randomNumber.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            imageAssets,
            width: 200,
            height: 200,
          ),
        ),
        const SizedBox(height: 30),
        OutlinedButton(
            onPressed: rollDice,
            child: const Text(
              "Roll Dice",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ))
      ],
    );
  }
}
