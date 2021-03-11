import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyProfil extends StatelessWidget {
  Widget build(BuildContext context) {
    // fungsi Widget build() yang fungsinya untuk mengembalikan sebuah objek Widget
    return new Scaffold(
      appBar: AppBar(
        // NavBar
        backgroundColor: Colors.lime,
        title: Text('ABOUT ME'),
        centerTitle: true,
      ),
      body: ListView(children: <Widget>[
        Container(
          // widget images
          color: Colors.white,
          child: Stack(
            children: <Widget>[
              Padding(
                // fungsi padding memposisikan widget child yang dimilikinya dengan memberikan jarak
                padding: EdgeInsets.only(top: 10),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                      height: 100,
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
            // kolom teks nama
            children: <Widget>[
              SizedBox(height: 20),
              Text(
                'Ervianto Bagus Wibowo ( 05 )',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              Text(
                'MI-2D', // teks kelas
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              Text(
                '1931710025', // teks nim
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                //  widget digunakan untuk menambahkan jarak baik secara vertikal atau horizontal.
                height: 5,
                child: Container(
                  color: Colors.white,
                ),
              ),
              Text(
                // teks jurusan
                'JURUSAN TEKNOLOGI INFORMASI',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              Text(
                'POLITEKNIK NEGERI',
                style: TextStyle(
                  // teks polinema
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              Text(
                'MALANG',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
