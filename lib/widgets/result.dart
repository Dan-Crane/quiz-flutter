import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int count;
  final int total;
  final Function handlerReset;

  Result({
    Key key,
    this.count,
    this.total,
    this.handlerReset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String text = "";

    if (0 >= count && count <= (total * 0.4).round())
      text = "Нет, ты шутишь?!";
    else if ((total * 0.4).round() + 1 >= count &&
        count <= (total * 0.8).round())
      text = "Ну это куда не шло...";
    else
      text = "Просто лучший!";

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
      decoration: BoxDecoration(
          color: Color(0xFFBDECB6),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              offset: Offset(2, 2),
              blurRadius: 4,
            ),
          ]),
      child: Column(
        children: [
          Container(
            width: 140,
            height: 140,
            child: FittedBox(
              child: Image.asset("assets/images/001-antara.png"),
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "$text",
            textAlign: TextAlign.center,
          ),
          Divider(color: Color(0xFF7fd29b)),
          Text(
            "Вы набрали $count из $total",
            textAlign: TextAlign.center,
          ),
          Divider(color: Color(0xFF7fd29b)),
          FlatButton(
            onPressed: handlerReset,
            child: Text("Попробовать еще!"),
          )
        ],
      ),
    );
  }
}
