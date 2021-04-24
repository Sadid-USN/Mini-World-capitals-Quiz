import 'package:flutter/material.dart';
import 'result.dart';
import './Quiz.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'question': 'The capital of Afghanistan is',
      'answer': [
        {'text': 'Bagdad', "isCorrect": 0},
        {'text': 'Kabul', "isCorrect": 1},
        {'text': 'Algeria', "isCorrect": 0},
        {'text': 'Damascus', "isCorrect": 0},
      ]
    },
    {
      'question': 'The capital of Albania is',
      'answer': [
        {'text': 'Vienna', "isCorrect": 0},
        {'text': 'Luanda', "isCorrect": 0},
        {'text': 'Yerevan', "isCorrect": 0},
        {'text': 'Tirana', "isCorrect": 1},
      ]
    },
    {
      'question': 'The capital of Argentina is',
      'answer': [
        {'text': 'Canberra', "isCorrect": 0},
        {'text': 'Buenos Aires', "isCorrect": 1},
        {'text': 'Baku', "isCorrect": 0},
        {'text': 'Sofia', "isCorrect": 0},
      ]
    }
  ];

  var _questionIndex = 0;
  var _totalIsCorrect = 0;

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalIsCorrect = 0;
    });
  }

  void _answerQuestion(int isCorrect) {
    _totalIsCorrect += isCorrect;

    setState(() {
      _questionIndex += 1;
      if (_questionIndex < _questions.length) {
        print('The Questions are over');
      }
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // var greeting = ['Hello'];
    // greeting.add('Sadid');
    // print(greeting);
    // questions = []; doesn't work if question is a const

    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[200],
        textTheme:
          GoogleFonts.ptSerifCaptionTextTheme(Theme.of(context).textTheme),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('World capitals Quiz'),
          centerTitle: true,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalIsCorrect, _restartQuiz),
      ),
    );
  }
}
