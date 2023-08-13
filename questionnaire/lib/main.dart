import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/question.dart';

import 'question.dart';
import './answer.dart';
import 'result.dart';
import 'quiz.dart';

void main() {
  var p1 = Person(age: 30, name: 'ty');
  print(p1.name);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int _totalScore = 0;

  final _questions = [
    {
      'questionText': 'What\'t your favorite color?',
      'answer': [
        {'answerText': 'Red', 'score': 5},
        {'answerText': 'Blue', 'score': 10},
        {'answerText': 'Green', 'score': 20},
        {'answerText': 'Yellow', 'score': 30},
      ],
    },
    {
      'questionText': 'What\'t your favorite animals?',
      'answer': [
        {'answerText': 'Dog', 'score': 5},
        {'answerText': 'Cat', 'score': 10},
        {'answerText': 'Rabbit', 'score': 20},
        {'answerText': 'Tiger', 'score': 30},
      ],
    },
    {
      'questionText': 'Who\'s your favorite star?',
      'answer': [
        {'answerText': 'Jay', 'score': 5},
        {'answerText': 'Zhoushen', 'score': 10},
        {'answerText': 'Eleven', 'score': 20},
        {'answerText': 'SpaceX', 'score': 30},
      ],
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion(int score) {
    //设置有状态需要重新渲染界面，作用域为setState所处的widget,调用方法build

    print('xxx');
    if (_questionIndex < _questions.length) {
      print('current idx is $_questionIndex');
    } else {
      print('There is no more questions!');
    }
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    _totalScore += score;
    print('total score is $_totalScore');
  }

  void _resetQuestion() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.light(),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Personal Questionnaire'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  questionIndex: _questionIndex,
                  answerQuestion: _answerQuestion,
                )
              : Result(_totalScore, _resetQuestion),
        ));
  }
}

class Person {
  final String name;
  int age;

  Person({required this.name, this.age = 30});
}
