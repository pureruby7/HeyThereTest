import 'package:flutter/material.dart';
import 'dart:math';

class UniqueColorGenerator {
  static Random random = new Random();
  Color getColor() {
    return Color.fromARGB(
      255,
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
    );
  }

  Color getColorFromChanelRed() {
    return Color.fromARGB(
      255,
      225,
      random.nextInt(150),
      random.nextInt(115),
    );
  }

  Color getColorFromChanelBlue() {
    return Color.fromARGB(
      255,
      random.nextInt(75),
      random.nextInt(250),
      255,
    );
  }

  Color getColorFromChanelGreen() {
    return Color.fromARGB(
      255,
      random.nextInt(180),
      255,
      random.nextInt(180),
    );
  }
}
