import 'package:flutter/material.dart';
import 'package:walle_fteam/utils/colors.dart';
import 'package:walle_fteam/walle/global_functions.dart';

class Neck {
  final Canvas canvas;
  final Size size;
  final double realHeight;
  final double realWidth;

  Neck(this.canvas, this.size, this.realHeight, this.realWidth) {
    _draw();
  }

  _drawRectangle(double x, double y,
      {double height = 33.76,
      double width = 20.14,
      List<Color> colors = AppColors.neckRectangle124,
      bool stroke = true}) {
    final rectangle124 = Rect.fromCenter(
        center: Offset(xConv(x, realWidth, size), yConv(y, realHeight, size)),
        width: xConv(width, realWidth, size),
        height: yConv(height, realHeight, size));

    final rectangle124Path = Path()..addRect(rectangle124);

    final rectangle124Paint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: colors,
      ).createShader(rectangle124);

    if (stroke) {
      drawPathWithStroke(canvas, rectangle124Path, rectangle124Paint);
    } else {
      canvas.drawRect(rectangle124, rectangle124Paint);
    }
  }

  _draw() {
    ///////////////////////////////// [Neck Base Rectangle] /////////////////////////////////

    final neckBaseRectangle = Rect.fromCenter(
        center: Offset(
            xConv(185.88, realWidth, size), yConv(379, realHeight, size)),
        width: xConv(49.56, realWidth, size),
        height: yConv(17.8, realHeight, size));

    final neckBaseRectanglePaint = Paint()
          ..shader = const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: AppColors.neckBaseRectangleGradient,
          ).createShader(neckBaseRectangle)
        //
        ;

    canvas.drawRect(neckBaseRectangle, neckBaseRectanglePaint);

    ///////////////////////////////// [Neck Base Rectangle] /////////////////////////////////
    ///
    ///////////////////////////////// [Neck rectangle 16] /////////////////////////////////

    final neckRectangle16Path = Path()
          ..moveTo(xConv(164.76, realWidth, size), yConv(358, realHeight, size))
          ..lineTo(
              xConv(164.76, realWidth, size), yConv(372.37, realHeight, size))
          ..quadraticBezierTo(
              xConv(185.88, realWidth, size),
              yConv(394.96, realHeight, size),
              xConv(206.27, realWidth, size),
              yConv(372.37, realHeight, size))
          ..lineTo(xConv(206.27, realWidth, size), yConv(360, realHeight, size))
          ..quadraticBezierTo(
              xConv(206.35, realWidth, size),
              yConv(358.65, realHeight, size),
              xConv(204.7, realWidth, size),
              yConv(358, realHeight, size))
        //
        ;

    final rectangle16Rect = Rect.fromCenter(
        center: Offset(
            xConv(184.88, realWidth, size), yConv(374.96, realHeight, size)),
        width: xConv(41.5, realWidth, size),
        height: yConv(34.42, realHeight, size));

    final neckRectangle16Paint = Paint()
          ..shader = const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: AppColors.neckRectangle16,
          ).createShader(rectangle16Rect)
        //
        ;

    drawPathWithStroke(canvas, neckRectangle16Path, neckRectangle16Paint);

    ///////////////////////////////// [Neck rectangle 16] /////////////////////////////////
    ///
    ///////////////////////////////// [Neck rectangle 125] /////////////////////////////////

    final rectangle125 = Rect.fromCenter(
        center: Offset(
            xConv(184.88, realWidth, size), yConv(368.96, realHeight, size)),
        width: xConv(38.54, realWidth, size),
        height: yConv(18.21, realHeight, size));

    final rectangle125Path = Path()
          ..moveTo(xConv(164.76, realWidth, size), yConv(358, realHeight, size))
          ..quadraticBezierTo(
              xConv(185.88, realWidth, size),
              yConv(374.96, realHeight, size),
              xConv(203.9, realWidth, size),
              yConv(358.22, realHeight, size))
        //
        ;

    final rectangle125Paint = Paint()
          ..shader = const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: AppColors.neckRectangle125,
          ).createShader(rectangle125)
        //
        ;

    drawPathWithStroke(canvas, rectangle125Path, rectangle125Paint);

    ///////////////////////////////// [Neck rectangle 125] /////////////////////////////////
    ///
    ///////////////////////////////// [Neck rectangle 15] /////////////////////////////////

    final rectangle15 = Rect.fromCenter(
        center: Offset(
            xConv(184.89, realWidth, size), yConv(363.96, realHeight, size)),
        width: xConv(28.34, realWidth, size),
        height: yConv(10.63, realHeight, size));

    final rectangle15Path = Path()
          ..moveTo(
              xConv(170.74, realWidth, size), yConv(358.21, realHeight, size))
          ..quadraticBezierTo(
              xConv(172.28, realWidth, size),
              yConv(365.5, realHeight, size),
              xConv(180.3, realWidth, size),
              yConv(368.85, realHeight, size))
          ..lineTo(
              xConv(188.76, realWidth, size), yConv(368.85, realHeight, size))
          ..quadraticBezierTo(
              xConv(196.88, realWidth, size),
              yConv(365.97, realHeight, size),
              xConv(198.94, realWidth, size),
              yConv(358.22, realHeight, size))
        //
        ;

    final rectangle15Paint = Paint()
          ..shader = const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: AppColors.neckRectangle15,
          ).createShader(rectangle15)
        //
        ;

    drawPathWithStroke(canvas, rectangle15Path, rectangle15Paint);

    ///////////////////////////////// [Neck rectangle 15] /////////////////////////////////
    ///

    _drawRectangle(175.9, 341.96);

    _drawRectangle(194.9, 341.96);

    _drawRectangle(182.9, 340.96,
        height: 33.76,
        width: 4.03,
        colors: AppColors.neckRectangle123,
        stroke: false);

    ///////////////////////////////// [Neck rectangle 114] /////////////////////////////////

    final rectangle114Path = Path()
          ..moveTo(
              xConv(168.8, realWidth, size), yConv(333.36, realHeight, size))
          ..quadraticBezierTo(
              xConv(168.89, realWidth, size),
              yConv(334, realHeight, size),
              xConv(169.84, realWidth, size),
              yConv(334.42, realHeight, size))
          ..lineTo(
              xConv(199.98, realWidth, size), yConv(334.42, realHeight, size))
          ..quadraticBezierTo(
              xConv(201, realWidth, size),
              yConv(334, realHeight, size),
              xConv(201, realWidth, size),
              yConv(333.36, realHeight, size))
        //
        ;

    final rectangle114Paint = Paint()..color = AppColors.neckRectangle114;

    canvas.drawPath(rectangle114Path, rectangle114Paint);

    ///////////////////////////////// [Neck rectangle 114] /////////////////////////////////
    ///
  }
}
