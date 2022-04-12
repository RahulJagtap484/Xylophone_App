import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  void PlaySound(int soundNumber) {
    final player = AudioCache();
    player.play('assets_note$soundNumber.wav');
  }

  Expanded buildKey({required Color color, soundNumber}) {
    return Expanded(
      child: FlatButton(
        child: Text(''),
        color: color,
        onPressed: () {
          PlaySound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Xylo Phone'),
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.red, soundNumber: 1),
                buildKey(color: Colors.orange, soundNumber: 2),
                buildKey(color: Colors.yellow, soundNumber: 3),
                buildKey(color: Colors.green, soundNumber: 4),
                buildKey(color: Colors.teal, soundNumber: 5),
                buildKey(color: Colors.blue, soundNumber: 6),
                buildKey(color: Colors.purple, soundNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
