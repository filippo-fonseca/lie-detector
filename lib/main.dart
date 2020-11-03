import 'package:flutter/material.dart';

import 'generator.dart';

void main() {
  runApp(LieDetector());
}

Widget ld = LD();
bool ldState = false;
Widget childUse = Text("Pre");

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
            child: FlatButton(
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
