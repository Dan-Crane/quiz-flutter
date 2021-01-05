import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  String title;
  final isCorrect;
  final handlerAnswer;

  Answer({
    Key key,
    this.title,
    this.isCorrect,
    this.handlerAnswer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => handlerAnswer(isCorrect),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.black, blurRadius: 4, offset: Offset(2, 2))
          ],
          borderRadius: BorderRadius.circular(5),
          gradient: LinearGradient(colors: [
            Color(0xFFF3E8CB),
            Color(0xFFF3E8CB),
          ]),
        ),
        child: Text("$title"),
      ),
    );
  }
}
