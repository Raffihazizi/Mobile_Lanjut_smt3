import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> myList = [
    {
      "Nama ": "Raffi",
      "umur": 20,
      "favcolor": [
        "black",
        "white",
        "blue",
        "black",
        "white",
        "blue",
        "black",
        "white",
        "blue",
        "black",
        "white",
        "blue",
        "black",
        "white",
        "blue",
        "black",
        "white",
        "blue",
      ]
    },
    {
      "Nama ": "Mitha",
      "umur": 21,
      "favcolor": [
        "cantik",
        "baik",
        "pemarah",
        "cantik",
        "baik",
        "pemarah",
        "caper",
        "baik",
        "pemarah",
        "cantik",
        "caper",
        "pemarah",
        "cantik",
        "caper",
        "pemarah",
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ip app"),
        ),
        body: ListView(
          children: myList.map((data) {
            print(data["favcolor"]);
            List myfavcolor = data["favcolor"];
            return Card(
              margin: EdgeInsets.all(10),
              color: Colors.black.withOpacity(0.1),
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Nama : ${data['Nama ']}"),
                            Text("umur : ${data['umur']}"),
                          ],
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: myfavcolor.map((color) {
                          return Container(
                            color: Colors.pink,
                            margin: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 5,
                            ),
                            padding: EdgeInsets.all(10),
                            child: Text(color),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
