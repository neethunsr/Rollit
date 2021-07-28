import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.tealAccent[700],
        appBar: AppBar(
          title: Center(
              child: Text(
            'Roll-It!',
            style: TextStyle(color: Colors.tealAccent[700]),
          )),
          backgroundColor: Colors.white,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceValue = 1;
  int rightDiceValue = 1;
  void rollDice() {
    setState(() {
      leftDiceValue = Random().nextInt(6) + 1;
      rightDiceValue = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            //Takes up maximum available space in a row/column
            child: TextButton(
              onPressed: () {
                rollDice();
              },
              child: Image.asset('images/dice$leftDiceValue.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                rollDice();
              },
              child: Image.asset('images/dice$rightDiceValue.png'),
            ),
          ),
        ],
      ),
    );
  }
}
