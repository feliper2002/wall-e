import 'package:flutter/material.dart';
import 'package:walle_fteam/utils/colors.dart';
import 'package:walle_fteam/walle/global_functions.dart';

class Shoulders {
  final Canvas canvas;
  final Size size;
  final double realHeight;
  final double realWidth;

  Shoulders(this.canvas, this.size, this.realHeight, this.realWidth) {
    _draw();
  }

  _drawShoulder(
    double x,
    double y, {
    double height = 9.3,
    double width = 63.25,
    AlignmentGeometry focal = Alignment.bottomLeft,
    double radius = 4,
    Radius topLeft = const Radius.circular(0),
    Radius topRight = const Radius.circular(5),
    Radius bottomLeft = const Radius.circular(5),
    Radius bottomRight = const Radius.circular(30),
  }) {
    final shoulder = Rect.fromCenter(
        center: Offset(xConv(x, realWidth, size), yConv(y, realHeight, size)),
        width: xConv(width, realWidth, size),
        height: yConv(height, realHeight, size));

    final shoulderRadius = RRect.fromRectAndCorners(shoulder,
        topLeft: topLeft,
        topRight: topRight,
        bottomLeft: bottomLeft,
        bottomRight: bottomRight);

    final shoulderPaint = Paint()
          ..shader = RadialGradient(
                  colors: AppColors.shouldersRadial,
                  radius: radius,
                  focal: focal)
              .createShader(shoulder)
        //
        ;

    Path shoulderPath = Path()..addRRect(shoulderRadius);
    shoulderPath = shoulderPath.transform(rotatePath(shoulder.center, 180));

    drawPathWithStroke(canvas, shoulderPath, shoulderPaint, strokeWidth: 3);
  }

  _draw() {
    _drawShoulder(101, 390);

    final middleRectangle = Rect.fromCenter(
        center: Offset(
            xConv(185.88, realWidth, size), yConv(392, realHeight, size)),
        width: xConv(103.3, realWidth, size),
        height: yConv(8.5, realHeight, size));

    final midleRectanglePaint = Paint()
          ..shader = const LinearGradient(
            colors: AppColors.middleRectangleShouldersLinear,
          ).createShader(middleRectangle)
        //
        ;

    final middleRectanglePath = Path()..addRect(middleRectangle);

    drawPathWithStroke(canvas, middleRectanglePath, midleRectanglePaint);

    _drawShoulder(
      271.5,
      390,
      focal: Alignment.bottomRight,
      topLeft: const Radius.circular(5),
      topRight: const Radius.circular(0),
      bottomLeft: const Radius.circular(30),
      bottomRight: const Radius.circular(5),
    );
  }
}
