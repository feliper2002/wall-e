import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/material.dart';

double xConv(double x, double realWidth, Size size, {double soma = 0}) {
  return (realWidth * ((x / size.width) + soma));
}

double yConv(double y, double realHeight, Size size, {double soma = 0}) {
  return (realHeight * ((y / size.height) + soma));
}

double _rotateRadians(double degrees) {
  final radians = degrees * (pi / 180);
  return radians;
}

Float64List rotatePath(Offset position, double degrees) {
  Matrix4 matrix = Matrix4.identity();

  var m = matrix
    ..clone()
    ..translate(position.dx, position.dy)
    ..multiply(Matrix4.rotationZ(_rotateRadians(degrees)))
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

drawCircleWithStroke(Canvas canvas, Rect rect, Paint paint,
    {Offset center = Offset.zero,
    double strokeWidth = 2,
    Color strokeColor = Colors.black,
    double radius = 10}) {
  final drawSTROKE = Paint()
        ..color = strokeColor
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeWidth
      //
      ;

  canvas.drawCircle(center, radius, drawSTROKE);
  canvas.drawCircle(center, radius, paint);
}
