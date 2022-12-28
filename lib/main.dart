import 'package:first_app/answer.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';
import 'quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final questions = const [
    {
      "questionText": "What is your Favourite Color",
      "answer": [
        {"text": "Red", "score": 10},
        {"text": "Blue", "score": 5},
        {"text": "Green", "score": 1},
      ]
    },
    {
      "questionText": "What is your Favourite Animal",
      "answer": [
        {"text": "Lion", "score": 10},
        {"text": "Deer", "score": 5},
        {"text": "Fox", "score": 1},
      ]
    },
    {
      "questionText": "What is your Favourite Car",
      "answer": [
        {"text": "Benz", "score": 10},
        {"text": "Toyota", "score": 5},
        {"text": "Lexus", "score": 1},
      ]
    },
  ];
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    if (_questionIndex < questions.length) {
      setState(() {
        _questionIndex += 1;
      });
    }
    print("Answer Chosen");
  }

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz"),
        ),
        body: _questionIndex < questions.length
            ? Quiz(
                questions: questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
