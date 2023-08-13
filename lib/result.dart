import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetHandler;

  String get totalScoreResult {
    String resultText;
    if (totalScore <= 15) {
      resultText = 'You\'re good!';
    } else if (totalScore > 15 && totalScore < 60) {
      resultText = 'You\'re handsome and clearly!';
    } else if (totalScore >= 60 && totalScore < 80) {
      resultText = 'You\'re strange!';
    } else {
      resultText = 'You\'re bad!';
    }
    return resultText;
  }

  Result(this.totalScore, this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            totalScoreResult,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        ElevatedButton(onPressed: () => resetHandler(), child: Text('Restart!'))
      ],
    );
  }
}
