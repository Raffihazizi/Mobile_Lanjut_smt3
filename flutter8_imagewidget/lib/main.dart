import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("image widget"),
        ),
        body: Center(
          child: Container(
            width: 350,
            height: 500,
            color: Colors.amber,
            child: Image(
              //image: AssetImage("images/rrq.jpeg"),
              image: NetworkImage("https://picsum.photos/200/300"),
            ),
          ),
        ),
      ),
    );
  }
}
