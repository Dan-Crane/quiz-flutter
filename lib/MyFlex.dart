import 'package:flutter/material.dart';

class MyFlex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flex test"),
      ),
      body: Container(
        color: Colors.grey[400],
        child: Column(
          // mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            BigColorBox(),
            Container(
              width: 100,
              // alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.red[400]),
              child: Text(
                "Hello Dart and Flutter",
                softWrap: false,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 40),
              ),
            ),
            Icon(
              Icons.favorite,
              size: 40,
              color: Colors.pink[400],
            ),
            Expanded(
                          child: Image.network(
                  "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.washingtonian.com%2Fwp-content%2Fuploads%2F2019%2F02%2Fmilada-vigerova-1295750-unsplash-2048x3072.jpg&f=1&nofb=1"),
            ),
            // Flexible(
            //   fit: FlexFit.tight,
            //   flex: 1,
            //   child: ColorBox(),
            // ),
            // Expanded(
            //   flex: 1,
            //   child: ColorBox(),
            // ),
            // Flexible(child: ColorBox()),
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

class BigColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(border: Border.all(), color: Colors.blue[300]),
    );
  }
}
