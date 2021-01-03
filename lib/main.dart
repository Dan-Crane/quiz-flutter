import 'package:flutter/material.dart';
import 'package:quiz/MyColumnRow.dart';
import 'package:quiz/MyContainer.dart';

import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

import 'MyFlex.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const myApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print(context);
    // MaterialApp отвечает за отображение(стилизация гугла)
    return MaterialApp(
      title: "Quiz app",
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      // home = root сбора прилоржения
      // Scaffold - структура отображения(пишет ЮИ за нас)
      home: MyFlex(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Test")),
      body: Container(
        child: Center(
          child: Text(
            "hello",
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}
