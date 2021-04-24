import 'package:flutter/material.dart';
// With this class we can change the s

class QuestionText extends StatelessWidget {
 final String questionText;

  QuestionText(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(questionText,
      style: TextStyle(
      fontSize: 25),
      textAlign: TextAlign.center,
      ),
    );
  }
}
