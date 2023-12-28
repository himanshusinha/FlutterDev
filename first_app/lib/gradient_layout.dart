import 'package:first_app/DiceRoller.dart';
import 'package:flutter/material.dart';

class GradientLayout extends StatelessWidget {
  GradientLayout({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.purple, Colors.red],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: DiceRoller());
  }
}
