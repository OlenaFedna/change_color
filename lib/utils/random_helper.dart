import 'dart:math';

import 'package:flutter/material.dart';

const int _maxColorRandom = 255;

/// A helper class for generating random colors.
class RandomHelper {
  /// Generates a random color with alpha 255.
  static Color getRandomColor() {
    final random = Random();

    return Color.fromARGB(
      _maxColorRandom,
      random.nextInt(_maxColorRandom),
      random.nextInt(_maxColorRandom),
      random.nextInt(_maxColorRandom),
    );
  }

  /// Generates a random color with an alpha value.
  static Color getRandomColorWithAlpha() {
    final random = Random();

    return Color.fromARGB(
      random.nextInt(_maxColorRandom),
      random.nextInt(_maxColorRandom),
      random.nextInt(_maxColorRandom),
      random.nextInt(_maxColorRandom),
    );
  }
}
