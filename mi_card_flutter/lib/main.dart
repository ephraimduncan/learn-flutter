import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("images/duncan.jpeg"),
                ),
                Text(
                  "Ephraim Atta-Duncan",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Pacifico",
                  ),
                ),
                Text(
                  "Software Engineer".toUpperCase(),
                  style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.w900,
                    color: Colors.blue.shade100,
                    fontFamily: "Source Sans Pro",
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 200,
                  child: Divider(
                    color: Colors.blue.shade100,
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.blue.shade900,
                    ),
                    title: Text(
                      "+233 26 144 1196",
                      style: TextStyle(
                        color: Colors.blue.shade900,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Source Sans Pro",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.blue.shade900,
                    ),
                    title: Text(
                      "ephraimduncan68@gmail.com",
                      style: TextStyle(
                        color: Colors.blue.shade900,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Source Sans Pro",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
