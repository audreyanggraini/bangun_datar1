import 'package:bangun_datar_app/pages/Jajargenjang.dart';
import 'package:bangun_datar_app/pages/Persegi.dart';
import 'package:bangun_datar_app/pages/PersegiPanjang.dart';
import 'package:bangun_datar_app/pages/Segitiga.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          InkWell(
          onTap:(){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> PersegiPage()));
    },
          child: CustomMenu(imageAssets: "assets/kotak.png", title: "Persegi")),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PersegiPanjangPage()));
              },
              child: CustomMenu(
                imageAssets: "assets/persegi.jpg",
                title: "persegi panjang",
              )),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => segitigapage()));
              },
              child: CustomMenu(
                imageAssets: "assets/segitiga1.png",
                title: "Segitiga",
              )),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => JajargenjangPage()));
              },
              child: CustomMenu(
                imageAssets: "assets/jajargenjang.png",
                title: "Jajargenjang",
              )),
          Row(
            children: [

          const Expanded(child: CustomMenu(imageAssets: "assets/segitiga1.png", title: "segitiga")),
          Expanded(child: CustomMenu(imageAssets: "assets/segitiga1.png", title: "segitiga")),

        ],
    ),
    ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAssets, required this.title,
  });
  final String imageAssets;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.pinkAccent
      ),
      child: Column(
        children: [
          Image.asset(imageAssets),
          Text(title),
        ],
      ),
    );
  }
}
