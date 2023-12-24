import 'package:creatingyourfirstflutterapp_buildingabasicflutterappwiththeming/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Basic Flutter App with Theming Test',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Test AppBar title
    expect(find.text('Welcome to Flutter'), findsOneWidget);

    // Test AppBar color using ThemeData
    final ThemeData? themeData =
        tester.widget<MaterialApp>(find.byType(MaterialApp)).theme;
    expect(themeData?.appBarTheme.backgroundColor, equals(Colors.amber));

    // final AppBar appBar = tester.widget(find.byType(AppBar));
    // expect(appBar.backgroundColor, equals(Colors.amber));
    //this test is invalid since the appBar's color is being set at MaterialApp level. the color of the appbar itself would be null.

    // Test for presence of Text widgets in the body
    expect(find.byType(Text), findsWidgets);

    // Test default text style applied from ThemeData
    expect(themeData?.textTheme.bodyMedium?.fontSize, equals(30));
    expect(themeData?.textTheme.bodyMedium?.color, equals(Colors.red));

    //the same applies to local text, the themes are coming from the default theme, not the Text widgets themselves
  });
}
