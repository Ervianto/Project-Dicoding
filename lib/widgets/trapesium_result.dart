import 'package:flutter/material.dart'; //menginmport material dari dart

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
        backgroundColor: Colors.lime, // untuk merubah warna background
        title: Text('Luas Trapesium'), // NavBar atas
      ),
      body: Container(
        color: Colors.white, //menSet warna menjadi putih
        alignment: Alignment.center, // untuk memposisikan ke tengah
        child: Column(
          // penambahan kolom
          mainAxisAlignment: MainAxisAlignment
              .start, // mainAxisAlignment merupakan properti yang dimiliki oleh row dan column yang berfungsi untuk mengatur posisi widget di dalamnya
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20, // untuk mengatur ukuran
              child: Container(
                color: Colors.white, // untuk menSet warna jadi putih
              ),
            ),
            SizedBox(
              // widget digunakan untuk menambahkan jarak baik secara vertikal atau horizontal.
              height: 10,
              child: Container(
                color: Colors.white, // untuk menSet warna jadi putih
              ),
            ),
            Container(
              //Container adalah untuk mengatur penempatan dan ukuran, style
              child: Text(
                "Panjang Sisi Sejajar Atas: ${sa}", // proses pemanggilan fungsi data sisi atas
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black), // untuk mengatur ukuran, dan warna
              ),
            ),
            Container(
                //Container adalah untuk mengatur penempatan dan ukuran, style
                child: Text(
              "Panjang Sisi Sejajar Bawah: ${sb}", // proses pemanggilan fungsi data sisi bawah
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black), // untuk mengatur ukuran, dan warna
            )),
            Container(
              //Container adalah untuk mengatur penempatan dan ukuran, style
              child: Text(
                "Tinggi Trapesium: ${tt}", // proses pemanggilan fungsi data tinggi
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black), // untuk mengatur ukuran, dan warna
              ),
            ),
            Container(
              // Container adalah untuk mengatur penempatan dan ukuran
              padding: EdgeInsets.all(10),
              child: Text(
                "HASIL",
                style: TextStyle(
                    fontSize: 20, //untuk mengatur ukuran huruf
                    color: Colors.red, //untuk mengatur warna huruf
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              // Container adalah untuk mengatur penempatan dan ukuran
              padding: EdgeInsets.all(10),
              width: 200, // untuk mengatur ukuran
              height: 100, //mengatur ukuran
              decoration: BoxDecoration(
                  // box hasil
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    width: 3, //mengatur ukuran
                    color: Colors.lightBlue[800], //untuk mengatur warna
                  )),
              child: Column(
                //penambahan colom
                children: <Widget>[
                  Container(
                    // Container adalah untuk mengatur penempatan dan ukuran
                    child: new Text(
                      luas.toStringAsFixed(1),
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.black), //untuk mengatur style huruf
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
