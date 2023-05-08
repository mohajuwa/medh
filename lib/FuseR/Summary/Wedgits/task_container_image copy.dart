// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TaskContainerImage extends StatelessWidget {
  final String imageUrl;
  final Color backgroundColor;
  const TaskContainerImage(
      {Key? key, required this.backgroundColor, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
        width: width.h / 50,
        height: height.h / 30,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            color: backgroundColor),
        child: ClipRRect(
            child: Image(image: AssetImage(imageUrl), fit: BoxFit.scaleDown)));
  }
}
