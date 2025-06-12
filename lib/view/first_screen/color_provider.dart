import 'package:change_color_protas/utils/random_helper.dart';
import 'package:flutter/material.dart';

class ColorProvider extends ChangeNotifier {
  Color? _backgroundColor;

  Color? get backgroundColor => _backgroundColor;

  void changeColor() {
    _backgroundColor = RandomHelper.getRandomColor();
    notifyListeners();
  }

  void resetColor() {
    _backgroundColor = null;
    notifyListeners();
  }
}
