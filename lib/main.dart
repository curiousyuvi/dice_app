import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: Center(child: Text('DICE')),
            backgroundColor: Colors.blueGrey[900],
          ),
          body: DicePage()),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int ldn = 1, rdn = 6;

  void setDiceFace() {
    setState(
      () {
        ldn = Random().nextInt(6) + 1;
        rdn = Random().nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              padding: EdgeInsets.all(5),
              onPressed: () {
                setDiceFace();
              },
              child: Image.asset('images/dice$ldn.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              padding: EdgeInsets.all(5),
              onPressed: () {
                setDiceFace();
              },
              child: Image.asset('images/dice$rdn.png'),
            ),
          ),
        ],
      ),
    );
  }
}
