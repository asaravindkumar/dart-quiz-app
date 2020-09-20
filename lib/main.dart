import 'package:DartQuiz/answer.dart';
import 'package:DartQuiz/question.dart';
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
  var questions = [
    {
      'questionText': 'What is your favorite Color?',
      'answerValues': ['Red', 'green', 'Blue', 'Black']
    },
    {
      'questionText': 'What is your favorite place?',
      'answerValues': ['Chennai', 'Home', 'Beach', 'Mountain']
    },
    {
      'questionText': 'What is your favorite dish?',
      'answerValues': ['Idli', 'Dosa', 'Chappathi', 'Pongal']
    }
  ];

  void changeQuestion() {
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
            Question(questions[questionIndex]['questionText']),
            ...(questions[questionIndex]['answerValues'] as List<String>)
                .map((answer) => Answer(answer, changeQuestion)),
          ],
        ),
      ),
    );
  }
}
