import 'package:flutter/material.dart';
import "package:audioplayers/audioplayers.dart";

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch, // TODO: Review
            children: [
              Sound(
                color: Colors.red,
                sound: "1",
              ),
              Sound(
                color: Colors.orange,
                sound: "2",
              ),
              Sound(
                color: Colors.yellow,
                sound: "3",
              ),
              Sound(
                color: Colors.green,
                sound: "4",
              ),
              Sound(
                color: Colors.blue,
                sound: "5",
              ),
              Sound(
                color: Colors.indigo,
                sound: "6",
              ),
              Sound(
                color: Colors.purple,
                sound: "7",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Sound extends StatelessWidget {
  final String sound;
  final Color color;

  const Sound({Key key, this.sound, this.color}) : super(key: key);

  void playSound() async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$sound.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () async {
          playSound();
        },
        child: null,
      ),
    );
  }
}
