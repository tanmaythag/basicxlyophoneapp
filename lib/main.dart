import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() => runApp(BasicXylophoneApp());

class BasicXylophoneApp extends StatelessWidget {
  void tone(int num){
    final player = AudioCache();
    player.play('note$num.wav');
  }
  Expanded reduce({Color color, int toneNum}){
    return Expanded(
        child: FlatButton(
        color: color,
        onPressed: (){
      tone(toneNum);
    },
    ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              reduce(color: Colors.red, toneNum: 1),
              reduce(color: Colors.orange , toneNum: 2),
              reduce(color: Colors.pink, toneNum: 3),
              reduce(color: Colors.lightBlue , toneNum: 4),
              reduce(color: Colors.teal, toneNum: 5),
              reduce(color: Colors.green, toneNum: 6),
              reduce(color: Colors.blue , toneNum: 7),

              ],
          ),
              ),
      ),
        );


  }
}