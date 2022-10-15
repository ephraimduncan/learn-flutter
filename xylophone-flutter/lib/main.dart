import 'package:flutter/material.dart';
import "package:audioplayers/audioplayers.dart";

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
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

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(color),
      ),
      onPressed: () async {
        final player = AudioPlayer();

        await player.play(AssetSource('note$sound.wav'));
      },
      child: null,
    );
  }
}
