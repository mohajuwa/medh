// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

enum ProfileDummyType { Icon, Image, Button }

class ProfileDummy extends StatelessWidget {
  final ProfileDummyType dummyType;
  final double scale;
  final String? image;
  final Color? color;
  final IconData? icon;
  const ProfileDummy(
      {Key? key,
      required this.dummyType,
      required this.scale,
      required this.color,
      this.icon,
      this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 40 * scale,
        height: 40 * scale,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        child: ClipOval(
            child: dummyType == ProfileDummyType.Icon
                ? Icon(Icons.person, color: Colors.white, size: 30 * scale)
                : Image(
                    fit: (scale == 1.2) ? BoxFit.cover : BoxFit.contain,
                    image: AssetImage(
                      image!,
                    ),
                  )));
  }
}
