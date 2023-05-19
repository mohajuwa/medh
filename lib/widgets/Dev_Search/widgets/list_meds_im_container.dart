//  ID  -- >        2040702
// ignore_for_file: file_names
import 'package:flutter/material.dart';

class ListMedsContainerImage extends StatelessWidget {
  final String imageUrl;
  final Color backgroundColor;
  const ListMedsContainerImage(
      {Key? key, required this.backgroundColor, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          color: backgroundColor),
      child: ClipRRect(
        child: Image(
          image: AssetImage(imageUrl),
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
