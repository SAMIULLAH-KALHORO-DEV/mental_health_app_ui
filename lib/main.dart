import 'package:flutter/material.dart';
// import 'package:mental_health_app_ui/home.dart';
import 'package:mental_health_app_ui/welcome_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
