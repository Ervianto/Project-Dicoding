import 'package:flutter/material.dart';

class TrapesiumResult extends StatelessWidget {
  TrapesiumResult({
    @required this.sa,
    @required this.sb,
    @required this.tt,
  });

  // deklarasi variabel
  final int sa;
  final int sb;
  final int tt;

  @override
  Widget build(BuildContext context) {
    // rumus proses perhitungan / statement
    double luas = ((sa + sb) * tt) * 0.5;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lime,
        title: Text('Luas Trapesium'), // NavBar atas
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment
              .start, // mainAxisAlignment merupakan properti yang dimiliki oleh row dan column yang berfungsi untuk mengatur posisi widget di dalamnya
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
              child: Container(
                color: Colors.white,
              ),
            ),
            SizedBox(
              // widget digunakan untuk menambahkan jarak baik secara vertikal atau horizontal.
              height: 10,
              child: Container(
                color: Colors.white,
              ),
            ),
            Container(
              //Container adalah untuk mengatur penempatan dan ukuran, style
              child: Text(
                "Panjang Sisi Sejajar Atas: ${sa}", // proses pemanggilan fungsi data sisi atas
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            Container(
                child: Text(
              "Panjang Sisi Sejajar Bawah: ${sb}", // proses pemanggilan fungsi data sisi bawah
              style: TextStyle(fontSize: 20, color: Colors.black),
            )),
            Container(
              child: Text(
                "Tinggi Trapesium: ${tt}", // proses pemanggilan fungsi data tinggi
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "HASIL",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              // Container adalah untuk mengatur penempatan dan ukuran
              padding: EdgeInsets.all(10),
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                  // box hasil
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    width: 3,
                    color: Colors.lightBlue[800],
                  )),
              child: Column(
                children: <Widget>[
                  Container(
                    child: new Text(
                      luas.toStringAsFixed(1),
                      style: TextStyle(fontSize: 50, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
