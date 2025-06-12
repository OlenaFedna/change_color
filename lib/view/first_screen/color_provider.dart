import 'package:change_color_protas/utils/random_helper.dart';
import 'package:flutter/material.dart';

class ColorProvider extends ChangeNotifier {
  Color? _backgroundColor = Colors.transparent;

  Color? get backgroundColor => _backgroundColor;

  void changeColor() {
    _backgroundColor = RandomHelper.getRandomColor3();
    notifyListeners();
  }

  void resetColor() {
    _backgroundColor = Colors.transparent;
    notifyListeners();
  }
}
