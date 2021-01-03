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
      trailing: FavoritWidget(),
    ),
  );

  Widget _btnSection() => Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildBtnCol('CALL', Icons.call, Colors.blue[700]),
            _buildBtnCol('ROUTE', Icons.near_me, Colors.blue[700]),
            _buildBtnCol('SHARE', Icons.share, Colors.blue[700]),
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

class FavoritWidget extends StatefulWidget {
  @override
  _FavoritWidgetState createState() => _FavoritWidgetState();
}

class _FavoritWidgetState extends State<FavoritWidget> {
  bool _isFavorite = false;
  int _favoriteCount = 44;

  // handler
  void _handlerFavorite() {
    setState(() {
      if (_isFavorite) {
        _isFavorite = false;
        _favoriteCount -= 1;
      } else {
        _isFavorite = true;
        _favoriteCount += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.center,
      // mainAxisSize: MainAxisSize.max,
      children: [
        Flexible(
          child: IconButton(
              icon: _isFavorite
                  ? Icon(Icons.favorite)
                  : Icon(Icons.favorite_border),
              color: Colors.yellow[900],
              onPressed: _handlerFavorite),
        ),
        Container(
          child: Text("$_favoriteCount"),
        ),
      ],
    );
  }
}

// Column(
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           Icon(
//             Icons.star,
//             color: Colors.yellow,
//           ),
//           Text("10")
//         ],
//       )
