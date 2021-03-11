import 'package:flutter/material.dart';

class TrapesiumResult extends StatelessWidget {
  TrapesiumResult({
    @required this.sa,
    @required this.sb,
    @required this.tt,
  });

  final int sa;
  final int sb;
  final int tt;

  @override
  Widget build(BuildContext context) {
    double luas = ((sa + sb) * tt) * 0.5;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lime,
        title: Text('Luas Trapesium'),
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
              child: Container(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
              child: Container(
                color: Colors.white,
              ),
            ),
            Container(
              child: Text(
                "Panjang Sisi Sejajar Atas: ${sa}",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            Container(
                child: Text(
              "Panjang Sisi Sejajar Bawah: ${sb}",
              style: TextStyle(fontSize: 20, color: Colors.black),
            )),
            Container(
              child: Text(
                "Tinggi Trapesium: ${tt}",
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
              padding: EdgeInsets.all(10),
              width: 200,
              height: 100,
              decoration: BoxDecoration(
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
