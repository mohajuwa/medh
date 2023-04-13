import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class CarouselPage extends StatefulWidget {
  @override
  State<CarouselPage> createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: double.infinity,
          child: Carousel(
            images: [
              AssetImage("images/doctor1.jpg"),
              AssetImage("images/doctor2.jpg"),
              AssetImage("images/doctor3.jpg"),
            ],
            dotSize: 15,
            dotIncreaseSize: 1,
            dotSpacing: 30,
            dotColor: Colors.white,
            dotBgColor: Colors.deepPurple.withOpacity(0.5),
            indicatorBgPadding: 10,
            boxFit: BoxFit.cover,
            borderRadius: true,
            radius: Radius.circular(30),
            overlayShadow: true,
            overlayShadowColors: Colors.grey,
            overlayShadowSize: 0.5,
          ),
        ),
      ),
    );
  }
}
