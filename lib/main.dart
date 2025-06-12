import 'package:change_color_protas/constants/ui_constants.dart';
import 'package:change_color_protas/utils/random_helper.dart';
import 'package:change_color_protas/view/app_content.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Color app', home: AppContent());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color? _backgroundColor;

  void _changeColor() {
    setState(() {
      _backgroundColor = RandomHelper.getRandomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: _backgroundColor,
        alignment: Alignment.center,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                UiConstants.defaultCornerRadius,
              ),
            ),
          ),
          onPressed: _changeColor,
          child: const Text(
            'Change Color',
            style: TextStyle(
              fontSize: UiConstants.defaultFontSize,
              color: UiConstants.defaultTextColor,
            ),
          ),
        ),
      ),
    );
  }
}
