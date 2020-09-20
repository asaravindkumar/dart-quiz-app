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
    'What is your favorite Color?',
    'What is your favorite place?',
    'Where do you live?'
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
            Text(questions[questionIndex]),
            Row(
              children: [
                RaisedButton(onPressed: changeQuestion),
              ],
            ),
            Row(children: [
              RaisedButton(onPressed: changeQuestion),
            ]),
            Row(children: [
              RaisedButton(onPressed: changeQuestion),
            ]),
          ],
        ),
      ),
    );
  }
}
