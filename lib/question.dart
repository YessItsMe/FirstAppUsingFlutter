import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String qText;
  Question(this.qText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        qText,
        textAlign: TextAlign.center,
        style:
            TextStyle(fontFamily: 'serif', fontSize: 25, color: Colors.white),
      ),
    );
  }
}
