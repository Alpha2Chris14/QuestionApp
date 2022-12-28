import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final resetQuiz;

  const Result(
    this.resultScore,
    this.resetQuiz,
  );

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text("Score: ${resultScore} No More Question......Thanks"),
        ElevatedButton(onPressed: resetQuiz, child: Text("Reset Quiz"))
      ],
    ));
  }
}
