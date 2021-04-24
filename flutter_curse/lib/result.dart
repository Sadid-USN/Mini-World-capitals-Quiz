import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultCorrect;
  final Function restartQuiz;
  Result(this.resultCorrect, this.restartQuiz);

  String get resultPhrase {
    var resultText = 'Finish';
    if (resultCorrect <= 3) {
      resultText = 'You are  a good expert on geography';
    }
    if (resultCorrect == 0) {
      resultText = 'Hopefully next time you finally learn geography';
    }

    return resultText; 
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        borderRadius: BorderRadius.circular(20),
        elevation: 10,
        shadowColor: Colors.blueGrey,
        child: Container(
          height: 150,
          width: 380,
          child: Center(
            child: Column(
              children: <Widget>[
                Text(
                  resultPhrase,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                TextButton(
                child: Text('Restart Quiz'),
                onPressed: restartQuiz,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
