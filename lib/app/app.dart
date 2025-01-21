import 'package:flutter/material.dart';
import 'package:flutter_advanced/presentation/theme_manager.dart';

class MyApp extends StatefulWidget {
  MyApp._internal(); // privet named constructor
  int appState = 0; // app state

  static final instance = MyApp._internal(); // singleton instance

  factory MyApp() => instance; // factory the class to return the instance

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getApplicationTheme(),
    );
  }
}
