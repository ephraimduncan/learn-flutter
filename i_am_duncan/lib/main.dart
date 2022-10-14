import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent.shade700,
          title: const Text(
            "I Am Duncan",
          ),
        ),
        body: const Center(
          child: Image(
            image: NetworkImage(
              "https://avatars.githubusercontent.com/u/55143799?v=4",
            ),
          ),
        ),
      ),
    ),
  );
}
