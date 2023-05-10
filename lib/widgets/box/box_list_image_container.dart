// ID  -- >        2040707
// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BoxContainerListImage extends StatelessWidget {
  final String imageUrl;
  final Color backgroundColor;
  const BoxContainerListImage(
      {Key? key, required this.backgroundColor, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          width: 10.h,
          height: 5.h,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              color: backgroundColor),
          child: ClipRRect(
              child:
                  Image(image: AssetImage(imageUrl), fit: BoxFit.scaleDown))),
    );
  }
}
