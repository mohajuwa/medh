// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:medh/Theme/theme.dart';

class ListsFontContainer extends StatelessWidget {
  final String cardSubTitle;

  const ListsFontContainer({Key? key, required this.cardSubTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        color: colors(context).color6,
        boxShadow: const [
          BoxShadow(
            color: Color(0x83111111),
            blurRadius: 4,
            spreadRadius: 2,
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
