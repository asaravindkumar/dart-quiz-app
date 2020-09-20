import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function buttonHandler;
  final String buttonText;

  Answer(this.buttonText, this.buttonHandler);
  @override
  Widget build(Object context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      child: RaisedButton(
          child: Text(
            buttonText,
          ),
          color: Colors.blue,
          hoverColor: Colors.black,
          highlightColor: Colors.amber,
          focusColor: Colors.lime,
          textColor: Colors.white,
          onPressed: buttonHandler),
    );
  }
}
