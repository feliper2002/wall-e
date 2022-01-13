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

  _drawShoulder(Path shoulder,
      {double x = 0,
      double y = 0,
      AlignmentGeometry focal = Alignment.bottomLeft,
      double radius = 4}) {
    final shoulderPaint = Paint()
          ..shader = RadialGradient(
                  colors: AppColors.shouldersRadial,
                  radius: radius,
                  focal: focal)
              .createShader(Rect.fromCenter(
                  center: Offset(
                      xConv(x, realWidth, size), yConv(y, realHeight, size)),
                  width: xConv(63.25, realWidth, size),
                  height: yConv(9.3, realHeight, size)))
        //
        ;

    drawPathWithStroke(canvas, shoulder, shoulderPaint, strokeWidth: 3);
  }

  _draw() {
    final leftShoulder = Path()
          ..moveTo(xConv(135, realWidth, size), yConv(394, realHeight, size))
          ..lineTo(xConv(135, realWidth, size), yConv(389, realHeight, size))
          ..quadraticBezierTo(
              xConv(135.4, realWidth, size),
              yConv(386.38, realHeight, size),
              xConv(130.36, realWidth, size),
              yConv(384.6, realHeight, size))
          ..lineTo(xConv(80, realWidth, size), yConv(384.6, realHeight, size))
          ..quadraticBezierTo(
              xConv(72.96, realWidth, size),
              yConv(387, realHeight, size),
              xConv(71.95, realWidth, size),
              yConv(392.73, realHeight, size))
          ..quadraticBezierTo(
              xConv(72.96, realWidth, size),
              yConv(393.7, realHeight, size),
              xConv(73.2, realWidth, size),
              yConv(393.88, realHeight, size))
        //
        ;

    final rightShoulder = Path()
          ..moveTo(xConv(238, realWidth, size), yConv(394, realHeight, size))
          ..lineTo(xConv(238, realWidth, size), yConv(389, realHeight, size))
          ..quadraticBezierTo(
              xConv(238.97, realWidth, size),
              yConv(386.38, realHeight, size),
              xConv(242.9, realWidth, size),
              yConv(384.6, realHeight, size))
          ..lineTo(
              xConv(293.9, realWidth, size), yConv(384.6, realHeight, size))
          ..quadraticBezierTo(
              xConv(300, realWidth, size),
              yConv(387, realHeight, size),
              xConv(301.46, realWidth, size),
              yConv(392.73, realHeight, size))
          ..quadraticBezierTo(
              xConv(300.37, realWidth, size),
              yConv(393.7, realHeight, size),
              xConv(300, realWidth, size),
              yConv(393.88, realHeight, size))
        //
        ;

    _drawShoulder(leftShoulder, x: 100, y: 389);

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

    _drawShoulder(rightShoulder, x: 270, y: 389, focal: Alignment.bottomRight);
  }
}
