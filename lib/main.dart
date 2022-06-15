// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    // final const can also be used
    {
      'questionText': 'Whats\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'White', 'score': 9},
        {'text': 'pink', 'score': 5},
        {'text': 'Yellow', 'score': 7},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Cat', 'score': 10},
        {'text': 'Dog', 'score': 8},
        {'text': 'Horse', 'score': 9},
        {'text': 'Duck', 'score': 7},
      ],
    },
    {
      'questionText': 'Whats\'s your favourite country?',
      'answers': [
        {'text': 'USA', 'score': 7},
        {'text': 'India', 'score': 9},
        {'text': 'Germany', 'score': 6},
        {'text': 'Australia', 'score': 5},
      ],
    },
    {
      'questionText': 'Whats\'s your favourite dish?',
      'answers': [
        {'text': 'Dosa', 'score': 10},
        {'text': 'Noodles', 'score': 6},
        {'text': 'Naan-Sabzi', 'score': 8},
        {'text': 'Pav Bhaji', 'score': 7},
      ],
    },
    {
      'questionText': 'Whats\'s your favourite brand?',
      'answers': [
        {'text': 'Gucci', 'score': 8},
        {'text': 'h&m', 'score': 7},
        {'text': 'Zara', 'score': 6},
        {'text': 'Louis Vuitton', 'score': 5},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Quiz App',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion:  _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
