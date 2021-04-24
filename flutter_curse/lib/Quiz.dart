import 'package:flutter/material.dart';
import './questionText.dart';
import './answerButton.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
   @required this.questions,
   @required this.questionIndex, 
   @required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        QuestionText(questions[questionIndex]['question']
        ),
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>).map((answer) {
          return AnswerButton(() => answerQuestion(answer['isCorrect']), answer['text']);
        }).toList()
      ],
    );
  }
}
