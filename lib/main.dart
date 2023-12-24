/*
Practice Question 1: Building a Basic Flutter App with Theming

Task Description:
Create a basic Flutter application that displays a Scaffold with an AppBar and a Body containing a Column of Text widgets. Implement theming within the application using ThemeData to customize the AppBar color and default text style. The AppBar should have a title "Welcome to Flutter", and the body should contain at least two Text widgets with different content.
 */

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.amber),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.red, fontSize: 30),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to Flutter'),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('This is some text, the first text'),
          Text('This is the second row of text')
        ],
      ),
    );
  }
}
