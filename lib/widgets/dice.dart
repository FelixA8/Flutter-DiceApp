import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  var nextNumber = 1;
  var currentNumber = 0;
  void randomize() {
    currentNumber = nextNumber;
    setState(() {
      nextNumber = Random().nextInt(6) + 1;
    });
    if (nextNumber == currentNumber) {
      randomize();
    }
  }

  @override
  void initState() {
    super.initState();
    nextNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: randomize,
            child: Image.asset(
              'images/dice$nextNumber.png',
              width: 100,
            ),
          ),
          const Spacer(),
          Column(
            children: [
              Text(
                'Digit shown: ',
                style: GoogleFonts.poppins(color: Colors.white, fontSize: 18),
              ),
              Text(
                nextNumber.toString(),
                style: GoogleFonts.poppins(color: Colors.white, fontSize: 38),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
