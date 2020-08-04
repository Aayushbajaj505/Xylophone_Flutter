import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());
void playsound(int soundnum) {
  final player = AudioCache();
  player.play('note$soundnum.wav');
}

Expanded buildkey({Color color, int soundnum}) {
  return Expanded(
    child: FlatButton(
        color: color,
        onPressed: () {
          playsound(soundnum);
        },
        child: null),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            buildkey(color: Colors.red, soundnum: 1),
            buildkey(color: Colors.blue, soundnum: 2),
            buildkey(color: Colors.green, soundnum: 3),
            buildkey(color: Colors.orange, soundnum: 4),
            buildkey(color: Colors.indigo, soundnum: 5),
            buildkey(color: Colors.yellow, soundnum: 6),
            buildkey(color: Colors.purple, soundnum: 7),
          ],
        )),
      ),
    );
  }
}
