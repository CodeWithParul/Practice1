// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  // String get resultPhrase {
  //   String resultText;
  //   if (resultScore <= 8) {
  //     resultText = 'You are awesome and innocent!';
  //   } else if (resultScore <= 12) {
  //     resultText = 'Pretty likeable!';
  //   } else if (resultScore <= 16) {
  //     resultText = 'You are ... strange?!';
  //   } else {
  //     resultText = 'You are so bad!';
  //   }
  //   return resultText;
  // }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            'Your score is: $resultScore',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        FlatButton(
          color: Colors.white,
          height: 45,
          // ignore: prefer_const_constructors
          child: Text(
            'Restart Quiz!',
            // ignore: prefer_const_constructors
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          textColor: Colors.black,
          onPressed: resetHandler,
        ),
      ],
    );
  }
}
