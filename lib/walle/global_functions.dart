import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/material.dart';

double xConv(double x, double realWidth, Size size) {
  return (realWidth * (x / size.width));
}

double yConv(double y, double realHeight, Size size) {
  return (realHeight * (y / size.height));
}

double rotateRadians(double degrees) {
  final radians = degrees * (pi / 180);
  return radians;
}

Float64List rotatePath(Offset position, double degrees) {
  Matrix4 matrix = Matrix4.identity();

  var m = matrix
    ..clone()
    ..translate(position.dx, position.dy)
    ..multiply(Matrix4.rotationZ(rotateRadians(degrees)))
    ..translate(-position.dx, -position.dy);

  return m.storage;
}

drawPathWithStroke(Canvas canvas, Path path, Paint basePaint,
    {double strokeWidth = 2, Color strokeColor = Colors.black}) {
  final drawSTROKE = Paint()
        ..color = strokeColor
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeWidth
      //
      ;
  canvas.drawPath(path, drawSTROKE);
  canvas.drawPath(path, basePaint);
}
