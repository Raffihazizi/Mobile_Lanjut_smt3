import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String kodebarang;
  final String namabarang;
  final String harga;
  final String diskon;

  ResultPage({
    required this.kodebarang,
    required this.namabarang,
    required this.harga,
    required this.diskon,
  });

  Map<String, double> calculateSalary(String harga) {
    double baseSalary;

    if (harga == '1') {
      baseSalary = 3000000.0;
    } else if (harga == '10.000') {
      baseSalary = 4000000.0;
    } else {
      baseSalary = 0.0;
    }

    double discount = 0.0;

    // Apply discount if harga is greater than 10.000
    if (double.parse(harga) > 10000.0) {
      discount = baseSalary * 0.2; // 20% discount
      baseSalary -= discount;
    }

    return {'baseSalary': baseSalary, 'discount': discount};
  }

  @override
  Widget build(BuildContext context) {
    Map<String, double> salaryInfo = calculateSalary(harga);

    // Add null checks for the keys
    double discount = salaryInfo['discount'] ?? 0.0;
    double totalDiscount = salaryInfo['discount'] ??
        0.0; // Assuming you want the total discount to be displayed

    return Scaffold(
      appBar: AppBar(
        title: Text("Data Mahasiswa"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            buildResultRow("kode barang:", kodebarang),
            buildResultRow("nama barang:", namabarang),
            buildResultRow("harga:", harga),

            buildResultRow("discount:", discount.toString()),
            buildResultRow("total discount:",
                totalDiscount.toString()), // Display total discount
          ],
        ),
      ),
    );
  }

  Widget buildResultRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          Text(value),
        ],
      ),
    );
  }
}
