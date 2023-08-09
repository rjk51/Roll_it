import 'package:flutter/material.dart';
import 'package:dice_roller/dice_roller.dart';
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;
class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.grey({super.key}):
    color1 = const Color.fromARGB(255, 51, 51, 51),
    color2 = const Color.fromARGB(255, 68, 68, 68);

  final Color color1;
  final Color color2;

  

  @override
  Widget build(context) { 
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [color1,color2],
        begin: startAlignment,
        end: endAlignment,
      ),
    ),
    child: const Center(
      child: DiceRoller(), 
    ),
  );
  }
}
