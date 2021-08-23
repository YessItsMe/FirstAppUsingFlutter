import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int a;
  final Function pAgain;

  Result(this.a, this.pAgain);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            a == 7 ? 'You Won' : 'You Lost',
            style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.yellow),
            textAlign: TextAlign.center,
          ),
          Text(
            'thankyou for playing till question number ${a + 1}',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.yellow,
            ),
            textAlign: TextAlign.center,
          ),
          RaisedButton(onPressed: pAgain, child: Text('Restart')),
          // FlatButton(
          //   child: Text('Restart Quiz!'),
          //   textColor: Colors.blue,
          //   onPressed: resetHandler,
          // )
        ],
      ),
    );
  }
}
