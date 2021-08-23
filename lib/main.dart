import 'package:flutter/material.dart';
import 'package:my_first_app/answer.dart';
import './question.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _qIndex = 0;
  int num = 0;
  var _qA = [
    {
      "Q": "1) Mera Jhumka Gira re",
      "O1": "Chor bazaar mein",
      "O2": "Sunday Market Mein",
      "O3": "Bareilly ke Bazaar Mein",
      "O4": "Zameen pr",
      "C": "3",
    },
    {
      "Q": "2) Allah bachaye meri jaan ki",
      "O1": "Deepika Drugs mein phass gayi",
      "O2": "Razia gundo mein phas gayi",
      "O3": "ungli darwaze mein phass gayi",
      "O4": "laila kamre mein phass gayi",
      "C": "2",
    },
    {
      "Q": "3) Kora kaagaz tha mera mann",
      "O1": "Lekin ab nahi hai",
      "O2": "Likh dia ispe naam mera",
      "O3": "Likh dia ispe naam tera",
      "O4": "Likh dia ispe naam ishq ka",
      "C": "3",
    },
    {
      "Q": "4) Tere _____ mein naachenge",
      "O1": "byah",
      "O2": "janmadin",
      "O3": "maut",
      "O4": "ishq",
      "C": "4"
    },
    {
      "Q":
          "5) Lag ja gale Hasin raat ho na ho, shayad iss janam mein fir_____ ho na ho",
      "O1": "Mulakat",
      "O2": "Pet Saaf",
      "O3": "shittaldaas",
      "O4": "hath saaf",
      "C": "1",
    },
    {
      "Q": "6) Ek saavan aaya aise ki ______ bhar gaya",
      "O1": "Ghada ",
      "O2": "Pet",
      "O3": "Dil",
      "O4": "Aankh",
      "C": "3",
    },
    {
      "Q": "7) Shree ram janki baithe hain mere _______ mein",
      "O1": "Ceene ",
      "O2": "Sofe",
      "O3": "Dil",
      "O4": "Mandir",
      "C": "1",
    },
    {
      "Q": "8) Jeene ke hai chaar din:- toh 5 Day test cricket kaise khelen?",
      "O1": "Ban Cricket",
      "O2": "Jaldi se",
      "O3": "Aise khelo",
      "O4": "Jupiter pr jakr khelo kyunki vaha time tez chalta hai",
      "C": "4",
    }
  ];
  void cAnsFunction() {
    print('The option you selected was correct now go to next question');
    num = _qIndex;
    setState(() {
      _qIndex += 1;
    });
  }

  void wAnsFunction() {
    print('The option you selected was wrong now bye bye');
    setState(() {
      num = _qIndex;
      _qIndex = -1;
    });
  }

  void pAgain() {
    setState(() {
      _qIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text('KBC aka Kaun banega chor ka patii',
              style: TextStyle(
                fontSize: 22,
                color: Colors.lightGreen[100],
                // height: 1,
              ))),
      body: (_qIndex == -1 || _qIndex == 8)
          ? Result(num, pAgain)
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                  Question((_qA[_qIndex]["Q"])),
                  Answer(_qA[_qIndex]["O1"].toString(),
                      _qA[_qIndex]["C"] == "1" ? cAnsFunction : wAnsFunction),
                  Answer(_qA[_qIndex]["O2"].toString(),
                      _qA[_qIndex]["C"] == "2" ? cAnsFunction : wAnsFunction),
                  Answer(_qA[_qIndex]["O3"].toString(),
                      _qA[_qIndex]["C"] == "3" ? cAnsFunction : wAnsFunction),
                  Answer(_qA[_qIndex]["O4"].toString(),
                      _qA[_qIndex]["C"] == "4" ? cAnsFunction : wAnsFunction),
                ]),
    ));
  }
}
