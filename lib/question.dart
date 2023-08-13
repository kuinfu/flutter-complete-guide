import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      width: double.infinity,
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 28,
          color: Colors.pinkAccent,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
