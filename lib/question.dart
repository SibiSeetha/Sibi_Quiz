import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String question;
  Function indexHandler;
  Question(this.question, this.indexHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text(
              question,
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            RaisedButton(
              child: Text("Answer"),
              onPressed: indexHandler,
            ),
            RaisedButton(
              child: Text("Answer"),
              onPressed: indexHandler,
            ),
            RaisedButton(
              child: Text("Answer"),
              onPressed: indexHandler,
            )
          ],
        ),
      ),
    );
  }
}
