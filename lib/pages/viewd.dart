import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_pro/carousel_pro.dart';

class CarouselPage extends StatefulWidget {
  const CarouselPage({super.key});

  @override
  State<CarouselPage> createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 300,
          width: double.infinity,
          child: Carousel(
            images: const [
              AssetImage("assets/images/doctor1.jpg"),
              AssetImage("assets/images/doctor2.jpg"),
              AssetImage("assets/images/doctor3.jpg"),
            ],
            dotSize: 15,
            dotIncreaseSize: 1,
            dotSpacing: 30,
            dotColor: Colors.white,
            dotBgColor: Colors.deepPurple.withOpacity(0.5),
            indicatorBgPadding: 10,
            boxFit: BoxFit.cover,
            borderRadius: true,
            radius: const Radius.circular(30),
            overlayShadow: true,
            overlayShadowColors: Colors.grey,
            overlayShadowSize: 0.5,
          ),
        ),
      ),
    );
  }
}
