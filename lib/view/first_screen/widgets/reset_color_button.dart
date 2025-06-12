import 'package:change_color_protas/constants/ui_constants.dart';
import 'package:change_color_protas/view/first_screen/color_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResetColorButton extends StatelessWidget {
  const ResetColorButton({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: UIConstants.defaultBackgroundColor,
        borderRadius: BorderRadius.circular(
          UIConstants.defaultButtonHeight / 2,
        ),
      ),
      child: IconButton(
        key: const Key(KeyConstants.resetColorButton),
        iconSize: UIConstants.defaultButtonHeight,
        color: UIConstants.defaultTextColor,
        icon: const Icon(
          Icons.refresh,
          color: UIConstants.defaultButtonColor,
          size: UIConstants.iconSize,
        ),
        onPressed: () {
          context.read<ColorProvider>().resetColor();
        },
      ),
    );
  }
}
