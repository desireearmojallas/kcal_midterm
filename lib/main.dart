import 'package:flutter/material.dart';
import 'package:kcal_midterm/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFffffff)),
      home: Splash(),
    );
  }
}

