import 'package:flutter/foundation.dart';

class Question {
  final String title;
  final List<Map> ansvers;

  Question({@required this.title, @required this.ansvers});
}

class QuestionData {
  final data = [
    Question(title: "title 1", ansvers: [
      {"ansver": "one", "isTrue": "true"},
      {"ansver": "two"},
      {"ansver": "three"},
    ]),
    Question(title: "title 2", ansvers: [
      {"ansver": "one", "isTrue": "true"},
      {"ansver": "two"},
      {"ansver": "three"},
    ]),
  ];
}
