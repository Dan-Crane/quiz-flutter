// core
import 'package:flutter/material.dart';
import 'package:quiz/modules/question.dart';
import 'package:quiz/widgets/answer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final QuestionData data = QuestionData();
  int _countResult = 0;
  int _questionInd = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFBDECB6),
        title: Text(
          "Вопросики вопросы",
          style: Theme.of(context).textTheme.caption,
        ),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color(0xFFFFFAFA),
          image: DecorationImage(
            image: AssetImage("assets/images/005-llama.png"),
            fit: BoxFit.fitWidth,
            alignment: AlignmentDirectional.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 15,
                bottom: 10,
              ),
              child: Text(
                "Вопрос",
                style: Theme.of(context).textTheme.caption,
              ),
            ),
            Answer(),
            Answer(),
            Answer(),
          ],
        ),
      ),
    );
  }
}
