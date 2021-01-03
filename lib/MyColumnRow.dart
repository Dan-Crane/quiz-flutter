import 'package:flutter/material.dart';

class MyColumnRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column and Row test"),
      ),
      body: Container(
        color: Colors.grey[400],
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ColorBox(),
            ColorBox(),
            ColorBox(),
          ],
        ),
      ),
    );
  }
}

class ColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration:
          BoxDecoration(border: Border.all(), color: Colors.orange[300]),
    );
  }
}
