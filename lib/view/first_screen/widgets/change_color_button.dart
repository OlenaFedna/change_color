import 'package:change_color_protas/constants/text_strings.dart';
import 'package:change_color_protas/constants/ui_constants.dart';
import 'package:change_color_protas/view/first_screen/color_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangeColorButton extends StatelessWidget {
  const ChangeColorButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      key: const Key(KeyConstants.changeColorButton),
      style: ElevatedButton.styleFrom(
        backgroundColor: UIConstants.defaultButtonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(UIConstants.defaultCornerRadius),
        ),
      ),
      onPressed: () {
        context.read<ColorProvider>().changeColor();
      },
      child: const Text(
        TextStrings.changeColorButtonText,
        style: TextStyle(
          fontSize: UIConstants.defaultFontSize,
          color: UIConstants.defaultTextColor,
        ),
      ),
    );
  }
}
