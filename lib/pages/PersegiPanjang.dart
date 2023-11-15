import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bangun_datar_app/controller/persegipanjang_controller.dart';

class PersegiPanjangPage extends StatelessWidget {
  PersegiPanjangPage({super.key});
  final PersegiPanjangController _persegipanjangcontroller = Get.put(PersegiPanjangController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green.shade300,
        title: Text(
          "Persegi Panjang Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Image.asset("assets/persegi.jpg", height: 150),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text("Persegi Panjang"),
          ),
          Text("Persegi panjang merupakan bangun datar yang memiliki dua pasang sisi sama panjang dan sejajar serta besar semua sudutnya adalah 90⁰ atau berbentuk siku-siku. Ada berbagai benda yang berbentuk persegi panjang, contohnya pintu, meja, buku tulis, penggaris, kertas, hingga lapangan."),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              onChanged: (value){
                _persegipanjangcontroller.panjang=int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "Panjang",
                  hintText: "Masukkan Panjang",
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
              onChanged: (value){
                _persegipanjangcontroller.lebar=int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "Lebar",
                  hintText: "Masukkan Lebar",
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
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.yellow,
                        textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    onPressed: (){
                      _persegipanjangcontroller.hitungluas();
                    }, child: Text("Hitung Luas",
                  style: TextStyle(color: Colors.white),)),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.lightGreenAccent,
                      textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  onPressed: (){
                    _persegipanjangcontroller.hitungkeliling();
                  }, child: Text("Hitung Keliling",
                style: TextStyle(color: Colors.black),)),
            ],
          ),

          Obx(
                () => Text(
              _persegipanjangcontroller.hasil.value,
              style: TextStyle(
                color: _persegipanjangcontroller.isihitungluas.value
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

