import 'package:flutter/material.dart';

import 'random.dart';
import "sound.dart";
import "widgets/methods.dart";

class LD extends StatefulWidget {
  @override
  _LDState createState() => _LDState();
}

final findRandom = FindRandom();
final sound = Sound();
final methods = Methods();
String displayText = methods.notStarted();

class _LDState extends State<LD> {
  // This widget is the root of your application.

  Color bck = findRandom.getRandomColor();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: () {
              findRandom.checkLie();
              setState(() {
                bck = findRandom.getRandomColor();

                if (findRandom.checkLie() == true) {
                  displayText = methods.foundLie();
                  return sound.play("lie");
                } else {
                  displayText = methods.foundTrue();
                  return sound.play("truth");
                }
              });
            },
            child: Container(
              margin: const EdgeInsets.all(10.0),
              width: 250.0,
              height: 250.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(120),
                color: bck,
              ),
              child: Center(
                child: Text(
                  displayText,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
