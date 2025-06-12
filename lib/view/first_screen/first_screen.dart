import 'package:change_color_protas/constants/ui_constants.dart';
import 'package:change_color_protas/view/first_screen/color_provider.dart';
import 'package:change_color_protas/view/first_screen/widgets/change_color_button.dart';
import 'package:change_color_protas/view/first_screen/widgets/reset_color_button.dart';
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ChangeColorButton(),
            const SizedBox(height: UIConstants.defaultSpace),
            DecoratedBox(
              decoration: BoxDecoration(
                color: UIConstants.defaultBackgroundColor,
                borderRadius: BorderRadius.circular(
                  UIConstants.defaultButtonHeight / 2,
                ),
              ),
              child: const ResetColorButton(),
            ),
          ],
        ),
      ),
    );
  }
}
