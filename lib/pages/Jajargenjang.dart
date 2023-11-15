import 'package:bangun_datar_app/controller/jajargenjang_controller.dart';
import 'package:bangun_datar_app/pages/Persegi.dart';
import 'package:bangun_datar_app/pages/PersegiPanjang.dart';
import 'package:bangun_datar_app/pages/Segitiga.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class JajargenjangPage extends StatelessWidget {
  JajargenjangPage({super.key});
  final jajargenjangController _jajargenjangController = Get.put(jajargenjangController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
        title: Text(
          "Jajar Genjang Page",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/jajargenjang.png",
            height: 150,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text("Jajar Genjang"),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
                "Segitiga merupakan bangun datar yang dibatasi dengan adanya tiga buah sisi serta memiliki tiga buah titik sudut."),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              onChanged: (value) {
                //akan dieksekusi ketika kita mengetik
                _jajargenjangController.alas = int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "Alas",
                  hintText: "Masukkan Alas (cm)",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              onChanged: (value) {
                //akan dieksekusi ketika kita mengetik
                _jajargenjangController.tinggi = int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "Tinggi",
                  hintText: "Masukkan Tinggi (cm)",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              onChanged: (value) {
                //akan dieksekusi ketika kita mengetik
                _jajargenjangController.sisimiring = int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "Sisi Miring Jajargenjang",
                  hintText: "Masukkan Sisi Miring ",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                  onPressed: () {
                    _jajargenjangController.hitungLuas();
                  },
                  child: Text("Hitung Luas",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      padding:  EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      textStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ElevatedButton(
                  onPressed: () {
                    _jajargenjangController.hitungKeliling();
                  },
                  child: Text("Hitung Keliling",
                    style: TextStyle(color: Colors.deepPurple),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.amberAccent,
                      padding:  EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      textStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Obx(() => Text(_jajargenjangController.hasil.value,
              style: TextStyle(
                  color: _jajargenjangController.isHitungLuas.value
                      ? Colors.green
                      : Colors.deepPurple),)),
          )
        ],
      ),
    );
  }
}