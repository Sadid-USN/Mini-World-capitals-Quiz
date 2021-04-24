import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {

  final Function changeQuestionsWithButton;
  final String answerText;

  AnswerButton(this.changeQuestionsWithButton, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.white,
      width: double.infinity,
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: changeQuestionsWithButton,
      ),
    );
  }
}
