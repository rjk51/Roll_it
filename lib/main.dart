import 'package:dice_roller/gradient_container.dart';
import 'package:flutter/material.dart';
import 'package:dice_roller/first_page.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const FirstPage(),
        '/home': (context) => const GradientContainer.grey(),
      },
    ),
  );
}
