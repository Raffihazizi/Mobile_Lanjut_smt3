import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff545454),
        appBar: AppBar(
          title: Text('My APPs'),
        ),
        body: Center(
          child: Text("hallo"),
        ),
      )
    );
  }
}
