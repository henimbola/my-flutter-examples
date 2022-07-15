import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dicee'),
        backgroundColor: Colors.red,
      ),
      body: DicePage(),
    )
  )
);

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DiceRow(),
    );
  }
}

class DiceRow extends StatefulWidget {
  const DiceRow({
    Key key,
  }) : super(key: key);

  @override
  _DiceRowState createState() => _DiceRowState();
}

class _DiceRowState extends State<DiceRow> {

  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void updateDices() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: TextButton(
                child: Image.asset('images/dice$leftDiceNumber.png'),
                onPressed: () {
                  updateDices();
                },
              ),
        ),
        Expanded(
          child: TextButton(
            child: Image.asset('images/dice$rightDiceNumber.png'),
            onPressed: () {
              updateDices();
            },
          ),
        ),
      ],
    );
  }
}
