import 'package:flutter/material.dart';

class Finish extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "WonderFul! You have won!",
        style: TextStyle(color: Colors.purple, fontSize: 34),
        textAlign: TextAlign.center,
      ),
    );
  }
}
