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
            title: Text("list title"),
          ),
          body: ListView(
            children: [
              ListTile(
                title: Text("Raffi"),
                subtitle: Text("hallo"),
                leading: CircleAvatar(),
                trailing: Text("12.00PM"),
                onTap: (){
                  return;
                },
              ),
              Divider(
                color: Colors.black,
              ),
              ListTile(
                title: Text("Mitha"),
                subtitle: Text("hehwhe"),
                leading: CircleAvatar(),
                trailing: Text("12.00PM"),
              ),
              Divider(
                color: Colors.black,
              ),
              ListTile(
                title: Text("Mitha"),
                subtitle: Text("aww"),
                leading: CircleAvatar(),
                trailing: Text("12.00PM"),
              ),
              Divider(
                color: Colors.black,
              ),
              ListTile(
                title: Text("Mitha"),
                subtitle: Text("hahaha"),
                leading: CircleAvatar(),
                trailing: Text("12.00PM"),
              ),
              Divider(
                color: Colors.black,
              ),
              ListTile(
                title: Text("Mitha"),
                subtitle: Text("awokawok"),
                leading: CircleAvatar(),
                trailing: Text("12.00PM"),
              ),
            ],
          )),
    );
  }
}
