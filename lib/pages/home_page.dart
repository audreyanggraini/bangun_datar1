import 'package:bangun_datar_app/pages/Persegi.dart';
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
          child: CustomMenu(imageAssets: "assets/persegi.jpg", title: "Persegi")),
          Row(
            children: [
          Expanded(child: CustomMenu(imageAssets: "assets/segitiga1.png", title: "segitiga")),
          Expanded(child: CustomMenu(imageAssets: "assets/segitiga1.png", title: "segitiga")),

        ],
    )
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
