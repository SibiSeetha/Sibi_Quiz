import 'package:flutter/material.dart';
import './bodywidget.dart';
//Check out my channel : https://youtu.be/dpnuLnTrBb0
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Sibi Quiz"),
          ),
          body: BodyWidget()),
    );
  }
}
