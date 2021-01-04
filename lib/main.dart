// core
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

// pages
import 'package:quiz/pages/home_page.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Quiz",
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          textTheme: TextTheme(
              caption: TextStyle(
            color: Color(0xFF1C1C1C),
            fontSize: 18,
          ))),
      home: HomePage(),
    );
  }
}
