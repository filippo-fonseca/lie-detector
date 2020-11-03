import 'package:flutter/material.dart';
import "package:flutter/cupertino.dart";

import 'generator.dart';

void main() {
  runApp(LieDetector());
}

Icon icon = Icon(Icons.check);

Widget ld = LD();
bool ldState = false;
Widget childUse = Text("Take me to the lie detector ➡");

class LieDetector extends StatefulWidget {
  @override
  _LieDetectorState createState() => _LieDetectorState();
}

class _LieDetectorState extends State<LieDetector> {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lie Detector"),
          backgroundColor: Color(0xff000000),
        ),
        body: Center(
            child: CupertinoButton(
          color: Color(0xff000000),
          onPressed: () {
            setState(() {
              childUse = LD();
            });
          },
          child: childUse,
        )),
      ),
    );
  }
}
