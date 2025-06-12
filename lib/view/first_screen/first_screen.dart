import 'package:change_color_protas/constants/ui_constants.dart';
import 'package:change_color_protas/view/first_screen/color_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// First screen of the app.
class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final backgroundColor = context.select<ColorProvider, Color?>(
      (colorProvider) => colorProvider.backgroundColor,
    );

    return Scaffold(
      body: Container(
        color: backgroundColor,
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
          onPressed: () {
            context.read<ColorProvider>().changeColor();
          },
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
