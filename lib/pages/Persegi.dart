import 'package:bangun_datar_app/controller/persegi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPage extends StatelessWidget {
  PersegiPage({Key? key}) : super(key: key);
final PersegiController _persegiController = Get.put(PersegiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Persegi Page"),
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/kotak.png",
            height: 150,
          ),
         Text("Persegi",style: TextStyle(color: Colors.white),
         ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text("Persegi"),
          ),
          Text("Persegi atau bujur sangkar adalah bangun datar dua dimensi yang dibentuk oleh empat buah rusuk yang sama panjang dan memiliki empat buah sudut yang kesemuanya adalah sudut siku-siku. Persegi merupakan turunan dari segi empat yang mempunyai ciri khusus keempat sisinya sama panjang dan keempat sudutnya siku-siku."),
          Padding(
        padding: const EdgeInsets.all(10.0),
    child: TextFormField(
      onChanged: (value){
        _persegiController.sisi=int.parse(value);
      },
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          labelText: "Sisi",
          hintText: "Masukkan Sisi",
          hintStyle: TextStyle(color: Colors.grey.shade400),
          contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
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
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                      textStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                  onPressed: (){

                _persegiController.hitungLuas();
              }, child: Text("Hitung Luas")),
            ),
          ),
          Center(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.blueAccent,
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                    textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),onPressed: (){
              _persegiController.hitungKeliling();
            }, child: Text("Hitung Keliling")),
          ),
          Obx(() => Text(_persegiController.hasil.value,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.deepOrangeAccent
          ),))
        ],
      ),
    );

  }
}
