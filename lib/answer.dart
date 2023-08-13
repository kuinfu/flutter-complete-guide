import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final selectHandler;

  final String answerText;

  Answer(this.answerText, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
