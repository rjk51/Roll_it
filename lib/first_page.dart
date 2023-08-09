import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:dice_roller/gradient_container.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation1, animation2) => const GradientContainer.grey(),
            transitionsBuilder: (context, animation1, animation2, child) {
              return FadeTransition(
                opacity: animation1,
                child: child,
              );
            },
            transitionDuration: const Duration(milliseconds: 500),
          )
        );
      }
    );
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 51, 51, 51),
            Color.fromARGB(255, 68, 68, 68),
          ],
        )),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 120),
              Image.asset(
                'assets/images/Roll_it.png',
                width: 250,
              ),
              const SizedBox(height: 40),
              Text(
                'Roll.it',
                style: GoogleFonts.ptSerifCaption(
                  color: Colors.white,
                  fontSize: 35,
                ),
              ),
              const SizedBox(height: 275),
              Text(
                '~by Ayaan Rajak',
                style: GoogleFonts.ptSerifCaption(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
