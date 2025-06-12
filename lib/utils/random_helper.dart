import 'dart:math';

import 'package:flutter/material.dart';

const int _maxColorRandom = 255;
const int _colorPatternAARRGGBB = 0xFFFFFFFF;

const int _alphaNotTranspered = 0xFF000000;
const int _colorPattern00RRGGBB = 0x00FFFFFF;

/// A helper class for generating random colors.
class RandomHelper {
  static final _random = Random();

  /// Generates a random color with alpha 255.
  static Color getRandomColor() {
    return Color.fromARGB(
      _maxColorRandom,
      _random.nextInt(_maxColorRandom),
      _random.nextInt(_maxColorRandom),
      _random.nextInt(_maxColorRandom),
    );
  }

  /// Generates a random color with alpha value.
  static Color getRandomColorWithAlpha() {
    return Color.fromARGB(
      _random.nextInt(_maxColorRandom),
      _random.nextInt(_maxColorRandom),
      _random.nextInt(_maxColorRandom),
      _random.nextInt(_maxColorRandom),
    );
  }

  /// Generates a random color with alpha value.
  static Color getRandomColor2() {
    return Color(_random.nextInt(_colorPatternAARRGGBB));
  }

  /// Generates a random color without alpha .
  static Color getRandomColor3() {
    return Color(_random.nextInt(_colorPattern00RRGGBB) + _alphaNotTranspered);
  }
}
