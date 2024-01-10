import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 122, 172, 65),
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 183, 188, 190),
          leading: const Icon(Icons.people_outline),
          title: const Center(
              child: Text(
            "biodata diri",
            style: TextStyle(color: Colors.white),
          ))),
      body: Center(
        child: Image(
          image: AssetImage(
            'image/raffi.jpg'
          )
        
        ),
          ),
          const Text(
            "Nama : Raffi Hazizi",
            style: TextStyle(fontSize: 18.0, color: Colors.black),
            textAlign: TextAlign.center,
          ),
          const Text(
            "NoBp : 2201082016",
            style: TextStyle(fontSize: 18.0, color: Colors.black),
            textAlign: TextAlign.center,
          ),
          const Text(
            "Prodi : Teknik Komputer",
            style: TextStyle(fontSize: 18.0, color: Colors.black),
            textAlign: TextAlign.center,
          ),
          const Text(
            "Kelas : Tekkom 2B",
            style: TextStyle(fontSize: 18.0, color: Colors.black),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
