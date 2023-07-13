import 'package:flutter/material.dart';
import 'package:mental_health_app_ui/home.dart';
import 'package:mental_health_app_ui/screen1.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
          home: Screen1(),
    );
  }
}
