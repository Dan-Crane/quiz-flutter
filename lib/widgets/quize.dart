import 'package:flutter/material.dart';

import 'answer.dart';

class Quize extends StatelessWidget {
  final idx;
  final questionData;
  final handlerAnswer;

  const Quize({
    Key key,
    this.idx,
    this.questionData,
    this.handlerAnswer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 15,
            bottom: 10,
          ),
          child: Text(
            "${questionData.questions[idx].title}",
            style: Theme.of(context).textTheme.caption,
          ),
        ),
        ...questionData.questions[idx].ansvers
            .map((value) => Answer(
                  title: value["ansver"],
                  handlerAnswer: handlerAnswer,
                  isCorrect: value.containsKey("isTrue") ? true : false,
                ))
            .toList(),
      ],
    );
  }
}
