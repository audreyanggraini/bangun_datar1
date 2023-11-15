import 'dart:html';
import 'package:bangun_datar_app/controller/segitiga_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class segitigapage extends StatelessWidget {
  segitigapage

      ({super.key});

  final segitiga_controller _segitiga_controller = Get.put(
      segitiga_controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green.shade300,
        title: Text(
          "Persegi PAGE",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/segitiga1.png",
            height: 115,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text("Segitiga"),
          ),
          Text(
              "Segitiga merupakan bangun datar yang dibatasi dengan adanya tiga buah sisi serta memiliki tiga buah titik sudut."),
          Padding(

            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              onChanged: (value) {
                _segitiga_controller.alas = int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "alas",
                  hintText: "masukan alas",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 4, horizontal: 8),
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
                _segitiga_controller.tinggi = int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "tinggi",
                  hintText: "masukan tinggi",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 4, horizontal: 8),
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


              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amberAccent,
                    padding: EdgeInsets.all(20),
                    textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal
                    ),
                  ),
                  onPressed: () {
                    _segitiga_controller.hitungLuas();
                  }, child: Text("Hitung Luas",
                style: TextStyle(color: Colors.blueAccent),)),

              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amberAccent,
                    padding: EdgeInsets.all(20),
                    textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal
                    ),
                  ),
                  onPressed: () {
                    _segitiga_controller.hitungKeliling();
                  }, child: Text("Hitung keliling")),

            ],
          ),
          Obx(
                () =>
                Text(
                  _segitiga_controller.hasil.value,
                  style: TextStyle(
                    color: _segitiga_controller.isHitungLuas.value
                        ? Colors.redAccent
                        : Colors.greenAccent,
                  ),
                ),
          ),

        ],
      ),
    );
  }
}