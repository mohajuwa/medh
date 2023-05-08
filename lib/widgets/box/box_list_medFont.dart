// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:medh/Theme/theme.dart';

class BoxFonList extends StatelessWidget {
  final String cardSubTitle;

  const BoxFonList({Key? key, required this.cardSubTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        color: colors(context).color1,
        boxShadow: const [
          BoxShadow(
            color: Color(0x83111111),
            blurRadius: 1.5,
            spreadRadius: 1,
          )
        ],
      ),
      child: Center(
        child: Text(
          cardSubTitle,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 11,
          ),
        ),
      ),
    );
  }
}
