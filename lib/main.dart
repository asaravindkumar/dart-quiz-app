import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('This is Demo app'),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Text('Testing 1'),
                RaisedButton(onPressed: null),
              ],
            ),
            Row(children: [
              Text('Testing 2'),
              RaisedButton(onPressed: null),
            ]),
            Row(children: [
              Text('Testing 3'),
              RaisedButton(onPressed: null),
            ]),
          ],
        ),
      ),
    );
  }
}
