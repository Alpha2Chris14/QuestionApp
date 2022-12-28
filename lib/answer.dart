import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  String _text;
  var _answerQuestion;
  Answer(this._text, this._answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 10),
      child: ElevatedButton(
        child: Text("${_text}"),
        onPressed: _answerQuestion,
        style: ButtonStyle(),
      ),
    );
  }
}
