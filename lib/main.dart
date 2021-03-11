import 'package:flutter/material.dart';
import 'widgets/AboutMe.dart';
import 'widgets/trapesium_result.dart';

void main() {
  runApp(new MaterialApp(
    home: new Home(),
    routes: <String, WidgetBuilder>{
      '/HalSatu': (BuildContext context) =>
          new Home(), //fungsi Widget build() yang fungsinya untuk mengembalikan sebuah objek Widget
      '/HalDua': (BuildContext context) => new MyProfil(),
    },
  ));
}

class Home extends StatefulWidget {
  // mentriger Flutter untuk merender ulang
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //variabel berubah
  int atap = 0;
  int alas = 0;
  int tinggi = 0;

// variabel text controller
  var _nama = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner:
    false;
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.view_list), // icon pojok kiri atas
        title: new Text("Hitung Luas Trapesium"),
        centerTitle: true,
        backgroundColor: Colors.lime,
        actions: <Widget>[
          //button ke halaman AboutMe
          new IconButton(
            icon: Icon(Icons.person_outline), // icon pojok kanan atas
            onPressed: () {
              Navigator.pushNamed(context, '/HalDua');
            },
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(20.0),
            child: new Column(
              children: <Widget>[
                new Padding(padding: new EdgeInsets.only(top: 20.0)),
                new Row(
                  children: <Widget>[
                    Expanded(
                      // input data
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            // object yang berubah pada State
                            atap = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        // maksimal panjang datanya 5
                        maxLength: 5,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        // input sisi atas dalam satuan Cm
                        decoration: InputDecoration(
                            labelText: "Sisi Atas",
                            suffix: Text("cm"),
                            border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(10.0)),
                            hintText: "Sisi Atas"),
                      ),
                    ),
                    SizedBox(
                      // widget digunakan untuk menambahkan jarak baik secara vertikal atau horizontal.
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            // object yang berubah pada State
                            alas = int.parse(txt);
                          });
                        },
                        keyboardType:
                            TextInputType.number, // input keyboard khusus angka
                        // maksimal panjang datanya 5
                        maxLength: 5,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        // input sisi bawah dalam satuan Cm
                        decoration: InputDecoration(
                            labelText: "Sisi Bawah",
                            suffix: Text("cm"),
                            border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(10.0)),
                            hintText: "Sisi Bawah"),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      // Expanded Widget merupakan sebuah widget yang memperluas anak dari Row, Column atau flex sehingga mengisi ruang yang tersedia
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            tinggi = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        // maksimal panjang datanya 5
                        maxLength: 5,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        // input tinggi dalam satuan Cm
                        decoration: InputDecoration(
                            labelText: "Tinggi",
                            suffix: Text("cm"),
                            border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(10.0)),
                            // fungsi hint text ketika di klik akan muncul tulisan Tinggi
                            hintText: "Tinggi"),
                      ),
                    ),
                  ],
                ),
                new Padding(
                    padding: new EdgeInsets.only(
                        top:
                            20.0)), // fungsi padding memposisikan widget child yang dimilikinya dengan memberikan jarak
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                  child: RaisedButton(
                    // button proses untuk menghitung luas, ketika diklik akan menuju ke halaman hasil
                    onPressed: () {
                      var route = new MaterialPageRoute(
                        builder: (BuildContext) {
                          var trapesium = new TrapesiumResult(
                            sa: atap,
                            sb: alas,
                            tt: tinggi,
                          );
                          return trapesium; // fungsi variabel
                        },
                      );
                      Navigator.of(context).push(route);
                    },
                    padding: EdgeInsets.all(
                        10.0), // fungsi padding memposisikan widget child yang dimilikinya dengan memberikan jarak
                    color: Colors.lime,
                    textColor: Colors.black,
                    child: Text(
                      'Hitung Luas',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
