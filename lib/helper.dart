import 'package:flutter_web/material.dart';
import 'dart:math' as math;

class Helper {
  static Color generateRandomColor() {
    return Color(
        (math.Random().nextDouble() * 0xFFFFFF).toInt() <<
            0)
        .withOpacity(0.8);
  }
}
