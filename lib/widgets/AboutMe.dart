import 'package:flutter/material.dart'; // import material dari dart

class MyProfil extends StatelessWidget {
  Widget build(BuildContext context) {
    // fungsi Widget build() yang fungsinya untuk mengembalikan sebuah objek Widget
    return new Scaffold(
      appBar: AppBar(
        // NavBar
        backgroundColor: Colors.lime,
        title: Text('ABOUT ME'), // nama navbar
        centerTitle: true,
      ),
      body: ListView(children: <Widget>[
        Container(
          // widget images
          color: Colors.white, //menSet warna jadi putih
          child: Stack(
            children: <Widget>[
              Padding(
                // fungsi padding memposisikan widget child yang dimilikinya dengan memberikan jarak
                padding: EdgeInsets.only(top: 10),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                      height: 100, // untuk menSet ukuran bingkai foto
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                            image: AssetImage('assets/images/me.jpg'),
                            fit: BoxFit.cover),
                      )),
                ),
              ),
            ],
          ),
        ),
        Container(
          // Container adalah untuk mengatur penempatan dan ukuran
          color: Colors.white,
          child: Column(
            // menambahkan kolom
            // kolom teks nama
            children: <Widget>[
              SizedBox(height: 20), //mengatur ukuran sizedbox
              Text(
                'Ervianto Bagus Wibowo ( 05 )',
                style: TextStyle(
                  // UNTUK mengatur style teks
                  fontWeight:
                      FontWeight.bold, // untuk merubah huruf menjadi tebal
                  fontSize: 20, // untuk mengatur ukuran huruf
                  color: Colors.black, //untuk mengatur warna huruf
                ),
              ),
              Text(
                'MI-2D', // teks kelas
                style: TextStyle(
                  // UNTUK mengatur style teks
                  fontWeight:
                      FontWeight.bold, // untuk merubah huruf menjadi tebal
                  fontSize: 20, // untuk mengatur ukuran huruf
                  color: Colors.black, //untuk mengatur warna huruf
                ),
              ),
              Text(
                '1931710025', // teks nim
                style: TextStyle(
                  // UNTUK mengatur style teks
                  fontWeight:
                      FontWeight.bold, // untuk merubah huruf menjadi tebal
                  fontSize: 20, // untuk mengatur ukuran huruf
                  color: Colors.black, //untuk mengatur warna huruf
                ),
              ),
              SizedBox(
                //  widget digunakan untuk menambahkan jarak baik secara vertikal atau horizontal.
                height: 5,
                child: Container(
                  // Container adalah untuk mengatur penempatan dan ukuran
                  color: Colors.white, //untuk mengatur warna huruf
                ),
              ),
              Text(
                // teks jurusan
                'JURUSAN TEKNOLOGI INFORMASI',
                style: TextStyle(
                  fontWeight:
                      FontWeight.bold, // untuk merubah huruf menjadi tebal
                  fontSize: 20, // untuk mengatur ukuran huruf
                  color: Colors.black, //untuk mengatur warna huruf
                ),
              ),
              Text(
                'POLITEKNIK NEGERI',
                style: TextStyle(
                  // UNTUK mengatur style teks
                  // teks polinema
                  fontWeight:
                      FontWeight.bold, // untuk merubah huruf menjadi tebal
                  fontSize: 20, // untuk mengatur ukuran huruf
                  color: Colors.black, //untuk mengatur warna huruf
                ),
              ),
              Text(
                'MALANG',
                style: TextStyle(
                  // UNTUK mengatur style teks
                  fontWeight:
                      FontWeight.bold, // untuk merubah huruf menjadi tebal
                  fontSize: 20, // untuk mengatur ukuran huruf
                  color: Colors.black, // untuk mengatur warna huruf
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
