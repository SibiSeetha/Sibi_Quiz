import 'package:flutter/material.dart';

import './question.dart';

class BodyWidget extends StatefulWidget {
  @override
  _BodyWidgetState createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  var questionIndex = 0;
  var question = [
    "What is the largest country in the world?",
    "What is the hottest continent on Earth?",
    "In “The Jungle Book”, what kind of animal is Baloo?"
  ];
  void increaseIndex() {
    setState(() {
      questionIndex++;
    });
  }

  void resetIndex() {
    setState(() {
      questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return (questionIndex < question.length)
        ? Question(question[questionIndex], increaseIndex)
        : Center(
            child: Column(
              children: [
                Text(
                  "You Did it!",
                  style: TextStyle(fontSize: 40),
                ),
                RaisedButton(
                  child: Text("Reset"),
                  onPressed: resetIndex,
                )
              ],
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            ),
          );
  }
}
