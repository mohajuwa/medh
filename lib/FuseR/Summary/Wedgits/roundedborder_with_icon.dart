// ID =>    2040760
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medh/Theme/theme.dart';
import 'package:medh/provider.dart';

class RoundedBorderWithIcon extends ConsumerWidget {
  const RoundedBorderWithIcon(
      {Key? key, required this.icon, this.width, this.height})
      : super(key: key);
  final IconData icon;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isDarkMode = ref.watch(appThemeProvider);
    return Container(
      width: width ?? 30,
      height: height ?? 30,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: colors(context).color4,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: const [
          BoxShadow(
            color: Color(0x47000000),
            blurRadius: 1.5,
            spreadRadius: 1,
          )
        ],
      ),
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
