//                 ID  -- >    2040699

import 'package:flutter/material.dart';
import 'package:flutter_shapes/flutter_shapes.dart';
import 'package:medh/FuseR/Summary/Values/values.dart';

mixin BackgroundHexagon implements CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = HexColor.fromHex("262A34");
    Shapes shapes = Shapes(
        canvas: canvas,
        radius: 50,
        paint: paint,
        center: Offset.zero,
        angle: 0);

    shapes.drawType(ShapeType.Hexagon); // enum
  }
}
