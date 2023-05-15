// ID =>    2040760
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medh/Theme/theme.dart';

class RoundedBorderWithIcon extends ConsumerWidget {
  const RoundedBorderWithIcon(
      {Key? key, required this.icon, this.width, this.height})
      : super(key: key);
  final IconData icon;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: width ?? 30,
      height: height ?? 30,
      alignment: Alignment.centerLeft,
      child: Center(
        child: Icon(
          icon,
          size: 30,
          color: colors(context).color1,
        ),
      ),
    );
  }
}
