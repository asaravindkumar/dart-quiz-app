import 'package:DartQuiz/question.dart';
import 'package:flutter/material.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function changeQuestion;

  Quiz({this.questions, this.questionIndex, this.changeQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answerValues']
                as List<Map<String, Object>>)
            .map((answer) =>
                Answer(answer['text'], () => changeQuestion(answer['score']))),
      ],
    );
  }
}
