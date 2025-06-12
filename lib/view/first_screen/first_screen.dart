import 'package:change_color_protas/constants/text_strings.dart';
import 'package:change_color_protas/constants/ui_constants.dart';
import 'package:change_color_protas/view/first_screen/color_provider.dart';
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
      body: GestureDetector(
        onTap: () {
          context.read<ColorProvider>().changeColor();
        },
        child: Container(
          color: backgroundColor,
          alignment: Alignment.center,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                TextStrings.helloThereButtonText,
                style: TextStyle(
                  fontSize: UIConstants.defaultFontSize,
                  color: UIConstants.defaultTextColor,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 3.0,
                      color: UIConstants.defaultTextBackgroundColor,
                    ),
                  ],
                ),
              ),
              SizedBox(height: UIConstants.defaultSpace),
              ResetColorButton(),
            ],
          ),
        ),
      ),
    );
  }
}
