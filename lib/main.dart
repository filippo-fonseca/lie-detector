import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

import 'random.dart';
import "sound.dart";

void main() {
  runApp(LieDetector());
}

class LieDetector extends StatefulWidget {
  @override
  _LieDetectorState createState() => _LieDetectorState();
}

final findRandom = FindRandom();
final sound = Sound();

class _LieDetectorState extends State<LieDetector> {
  // This widget is the root of your application.

  Color bck = findRandom.getRandomColor();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Lie Detector"),
              backgroundColor: Color(0xff000000),
            ),
            body: Center(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    bck = findRandom.getRandomColor();
                    sound.play("lie");
                    findRandom.checkLie();
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
                      "Initialize Lie Detector",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            )));
  }
}
