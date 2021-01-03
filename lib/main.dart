import 'package:flutter/material.dart';

import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  debugPaintSizeEnabled = false;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // print(context);
    // MaterialApp отвечает за отображение(стилизация гугла)
    return MaterialApp(
      title: "Flutter layout demo",
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      // home = root сбора прилоржения
      // Scaffold - структура отображения(пишет ЮИ за нас)
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter layout demo"),
        ),
        body: ListView(
          children: <Widget>[
            Image.asset(
              "assets/images/photo-1.jpg",
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            _buildHeaderWidget,
            _btnSection(),
            _textSection,
          ],
        ),
      ),
    );
  }

  // widgets
  Widget _buildHeaderWidget = Container(
    padding: const EdgeInsets.all(22),
    child: ListTile(
      title: Text(
        "Oeschinen Lake Campground",
        softWrap: false,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: 16),
      ),
      subtitle: Text(
        "Kandersteg, Switzerland",
        softWrap: false,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: 14),
      ),
      trailing: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(
            Icons.star,
            color: Colors.yellow,
          ),
          Text("10")
        ],
      ),
    ),
  );

  Widget _btnSection() => Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildBtnCol('CALL', Icons.call, Colors.black),
            _buildBtnCol('ROUTE', Icons.near_me, Colors.black),
            _buildBtnCol('SHARE', Icons.share, Colors.black),
          ],
        ),
      );

  Column _buildBtnCol(String label, IconData icon, Color color) => Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            color: color,
          ),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          )
        ],
      );

  Widget _textSection = Container(
    padding: const EdgeInsets.all(32),
    child: Text(
      "Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.",
      softWrap: true,
    ),
  );
}
