// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:change_color_protas/constants/text_strings.dart';
import 'package:change_color_protas/constants/ui_constants.dart';
import 'package:change_color_protas/view/first_screen/color_provider.dart';
import 'package:change_color_protas/view/first_screen/first_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

void main() {
  testWidgets('Test first screen', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: ChangeNotifierProvider<ColorProvider>(
          create: (_) => ColorProvider(),
          child: const FirstScreen(),
        ),
      ),
    );
    // Verify that we have change color text.
    expect(find.text(TextStrings.changeColorButtonText), findsOneWidget);

    // find button by key and tap on it.
    await tester.tap(find.byKey(const Key(KeyConstants.changeColorButton)));
    await tester.pump();
  });
}
