// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import './main.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  Answer(this.selectHandler,this.answerText);
  // const Answer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey,
      ),
      width: double.infinity,
      margin: EdgeInsets.only(right: 25,left: 25,top: 5,bottom:5),
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
