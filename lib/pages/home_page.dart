// core
import 'package:flutter/material.dart';
import 'package:quiz/modules/question.dart';
import 'package:quiz/widgets/progress_bar.dart';
import 'package:quiz/widgets/quize.dart';
import 'package:quiz/widgets/result.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final QuestionData data = QuestionData();
  int _countResult = 0;
  int _questionIdx = 0;

  List<Icon> _icons = [];

  void _clearState() => setState(() {
        _questionIdx = 0;
        _countResult = 0;
        _icons = [];
      });

  void _handlerAnswer(bool isCorrect) => setState(() {
        if (isCorrect) {
          _icons.add(Icon(Icons.brightness_1, color: Colors.green[200]));
          _countResult++;
        } else {
          _icons.add(Icon(Icons.brightness_1, color: Colors.red[200]));
        }
        _questionIdx++;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTextStyle.merge(
          style: TextStyle(fontSize: 24),
          child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              color: Color(0xFFFDF5DB),
              image: DecorationImage(
                image: AssetImage("assets/images/005-llama.png"),
                fit: BoxFit.fitWidth,
                alignment: AlignmentDirectional.bottomCenter,
              ),
            ),
            child: Column(
              children: [
                ProgressBar(
                  icons: _icons,
                  total: data.questions.length,
                  count: _countResult,
                ),
                _questionIdx != data.questions.length
                    ? Quize(
                        idx: _questionIdx,
                        questionData: data,
                        handlerAnswer: _handlerAnswer,
                      )
                    : Result(
                        count: _countResult,
                        total: data.questions.length,
                        handlerReset: _clearState,
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
