import 'package:flutter/material.dart';
import 'result_page.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  TextEditingController namaController = TextEditingController();
  TextEditingController nipController = TextEditingController();
  TextEditingController golonganController = TextEditingController();
  TextEditingController diskonController = TextEditingController();

  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
    borderSide: BorderSide(color: Colors.black, width: 2.0),
  );

  final TextStyle buttonTextStyle = TextStyle(color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data barang"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            buildLinedTextField(namaController, "kode barang"),
            buildLinedTextField(nipController, "nama barang"),
            buildLinedTextField(golonganController, "Harga"),
            buildLinedTextField(diskonController, "diskon"),
           
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultPage(
                        kodebarang: namaController.text,
                        namabarang: nipController.text,
                        harga: golonganController.text,
                        diskon: diskonController.text,
                      ),
                    ),
                  );
                },
                child: Text("Proses", style: buttonTextStyle),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildLinedTextField(
      TextEditingController controller, String labelText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(labelText),
          Container(
            width: 200,
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                border: outlineInputBorder,
                isDense: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
