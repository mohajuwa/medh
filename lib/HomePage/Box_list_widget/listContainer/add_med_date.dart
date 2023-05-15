//                 ID  -- >        2040700

// ignore_for_file: file_names
import 'package:flutter/material.dart';

class AddMedDateContainer extends StatelessWidget {
  final String cardDate;
  final Color backgroundColor;

  const AddMedDateContainer(
      {Key? key, required this.cardDate, required this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        color: backgroundColor,
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
          cardDate,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}
