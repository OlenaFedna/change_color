import 'package:change_color_protas/constants/text_strings.dart';
import 'package:change_color_protas/view/first_screen/color_provider.dart';
import 'package:change_color_protas/view/first_screen/first_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// The main entry point of the application.
/// Add here logic for the all app's content. For exmple routing or localization
class AppContent extends StatelessWidget {
  const AppContent({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: TextStrings.colorAppTitle,
      home: ChangeNotifierProvider(
        create: (_) => ColorProvider(),
        child: const FirstScreen(),
      ),
    );
  }
}
