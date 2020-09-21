import 'package:DartQuiz/finish.dart';
import 'package:DartQuiz/quiz.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var finalScore = 0;
  var questions = [
    {
      'questionText': 'What is your favorite Color?',
      'answerValues': [
        {'text': 'Red', 'score': 10},
        {'text': 'green', 'score': 3},
        {'text': 'Blue', 'score': 5},
        {'text': 'Black', 'score': 8}
      ]
    },
    {
      'questionText': 'What is your favorite place?',
      'answerValues': [
        {'text': 'Chennai', 'score': 10},
        {'text': 'Home', 'score': 10},
        {'text': 'Beach', 'score': 5},
        {'text': 'Mountain', 'score': 3}
      ]
    },
    {
      'questionText': 'What is your favorite dish?',
      'answerValues': [
        {'text': 'Idli', 'score': 10},
        {'text': 'Dosa', 'score': 8},
        {'text': 'Chappathi', 'score': 3},
        {'text': 'Pongal', 'score': 7}
      ]
    }
  ];

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      finalScore = 0;
    });
  }

  void changeQuestion(int score) {
    finalScore += score;
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('This is Demo app'),
        ),
        body: Column(
          children: [
            Text(('Score: ' + finalScore.toString())),
            (questionIndex < questions.length)
                ? Quiz(
                    questions: questions,
                    questionIndex: questionIndex,
                    changeQuestion: changeQuestion,
                  )
                : Finish(resetQuiz)
          ],
        ),
      ),
    );
  }
}
