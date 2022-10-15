import "dart:math";
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  const BallPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text("Ask Me Anything"),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  String ballText = "Yes, Take my advice";

  void changeBall() {
    setState(() {
      ballNumber = Random().nextInt(4) + 1;

      switch (ballNumber) {
        case 2:
          ballText = "Please Don't";
          break;

        case 3:
          ballText = "I am not sure";
          break;

        case 4:
          ballText = "I AM CERTAIN!";
          break;

        case 5:
          ballText = "Please don't ask me again";
          break;

        default:
          ballText = "Yes, Take my advice";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () => changeBall(),
            child: Image.asset(
              "images/ball$ballNumber.png",
            ),
          ),
          Text(
            ballText,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.w900),
          ),
        ],
      ),
    );
  }
}
