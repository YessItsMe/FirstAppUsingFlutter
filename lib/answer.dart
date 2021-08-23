import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String aText;
  final Function fUp; //follow up for answer

  Answer(this.aText, this.fUp);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        padding: EdgeInsets.all(8.0),
        color: Color.fromRGBO(199, 21, 133, 0.5),
        textColor: Colors.white,
        hoverColor: Color.fromRGBO(64, 224, 208, 1),
        child: Text(aText),
        onPressed: fUp,
      ),
    );
  }
}
