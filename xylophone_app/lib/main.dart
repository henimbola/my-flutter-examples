import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() { runApp(XylophoneApp()); }

class XylophoneApp extends StatelessWidget {

  void playSong({int number}) {
    final audioCache = AudioCache();
    audioCache.play('note$number.wav');
  }

  Expanded buildKey({Color color, int numberPlayed}) {
    return Expanded(
        child: TextButton(
        onPressed: () { playSong(number: numberPlayed); },
        style: TextButton.styleFrom(
        primary: Colors.white,
        textStyle: const TextStyle(fontSize: 20),
        backgroundColor: color
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(color: Colors.red, numberPlayed: 1),
                buildKey(color: Colors.yellow, numberPlayed: 2),
                buildKey(color: Colors.blue, numberPlayed: 3),
                buildKey(color: Colors.green, numberPlayed: 4),
                buildKey(color: Colors.orange, numberPlayed: 5),
                buildKey(color: Colors.pink, numberPlayed: 6),
                buildKey(color: Colors.cyan, numberPlayed: 7),
              ],
            )
        ),
      ),
    );
  }
}
