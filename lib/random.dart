import 'package:flutter/material.dart';
import "dart:math";

class FindRandom {
  Color getRandomColor() {
    List<Color> colorList = [
      Color(0xff787856),
      Color(0xff6320EE),
      Color(0xff8075FF),
      Color(0xffF8F0FB),
    ];

    final _random = new Random();

// generate a random index based on the list length
// and use it to retrieve the element
    Color element = colorList[_random.nextInt(colorList.length)];

    return element;
  }

  bool checkLie() {
    List<bool> validOptions = [true, false];

    final _random = new Random();

// generate a random index based on the list length
// and use it to retrieve the element
    bool element = validOptions[_random.nextInt(validOptions.length)];

    if (element == true) {
      print("The user lied.");
    } else if (element == false) {
      print("The user didn't lie.");
    }

    return element;
  }
}
