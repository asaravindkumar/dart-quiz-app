import 'package:flutter/material.dart';

class Finish extends StatelessWidget {
  final Function resetHandler;

  Finish(this.resetHandler);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          "WonderFul! You have won!",
          style: TextStyle(color: Colors.purple, fontSize: 34),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          onPressed: resetHandler,
          child: Text("Reset"),
        )
      ],
    ));
  }
}
