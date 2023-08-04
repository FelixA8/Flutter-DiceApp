import 'package:flutter/material.dart';
import 'package:my_app/widgets/dice.dart';

import 'package:google_fonts/google_fonts.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: const Text('Roll the Dice!'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.deepPurple, Color.fromARGB(255, 67, 37, 118)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'How to use:',
                style: GoogleFonts.poppins(color: Colors.white, fontSize: 18),
              ),
              Text(
                'Click on the dice to roll a random digits',
                style: GoogleFonts.poppins(color: Colors.white, fontSize: 18),
              ),
              const Dice(),
            ],
          ),
        ),
      ),
    );
  }
}
