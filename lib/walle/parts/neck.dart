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
    ///////////////////////////////// [Neck rectangle 195] /////////////////////////////////

    final rectangle195 = Rect.fromCenter(
      center: Offset(
          xConv(184.9, realWidth, size), yConv(311.96, realHeight, size)),
      width: xConv(32.23, realWidth, size),
      height: yConv(45, realHeight, size),
    );
    final rectangle195Radius =
        RRect.fromRectAndRadius(rectangle195, const Radius.circular(8));

    final rectangle195Paint = Paint()
          ..shader = const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: AppColors.neckRectangle195,
          ).createShader(rectangle195)
        //
        ;

    final rectangle195Path = Path()..addRRect(rectangle195Radius);

    drawPathWithStroke(canvas, rectangle195Path, rectangle195Paint);

    ///////////////////////////////// [Neck rectangle 195] /////////////////////////////////
    ///
    ///////////////////////////////// [Neck rectangle 13] /////////////////////////////////

    final rectangle13 = Rect.fromCenter(
      center: Offset(
          xConv(184.91, realWidth, size), yConv(294.96, realHeight, size)),
      width: xConv(10.74, realWidth, size),
      height: yConv(11.43, realHeight, size),
    );

    final rectangle13Paint = Paint()..color = AppColors.neckRectangle13;

    final rectangle13Path = Path()..addRect(rectangle13);

    drawPathWithStroke(canvas, rectangle13Path, rectangle13Paint);

    ///////////////////////////////// [Neck rectangle 13] /////////////////////////////////
    ///
    ///////////////////////////////// [Neck rectangle 12] /////////////////////////////////

    final rectangle12 = Rect.fromCenter(
      center: Offset(
          xConv(184.91, realWidth, size), yConv(283.96, realHeight, size)),
      width: xConv(23.64, realWidth, size),
      height: yConv(11.56, realHeight, size),
    );

    final rectangle12Paint = Paint()..color = AppColors.neckRectangle12;

    final rectangle12Path = Path()..addRect(rectangle12);

    drawPathWithStroke(canvas, rectangle12Path, rectangle12Paint);

    ///////////////////////////////// [Neck rectangle 12] /////////////////////////////////
    ///
    ///////////////////////////////// [Neck rectangle 10] /////////////////////////////////

    final rectangle10 = Rect.fromCenter(
      center: Offset(
          xConv(184.91, realWidth, size), yConv(273.96, realHeight, size)),
      width: xConv(28.52, realWidth, size),
      height: yConv(30.56, realHeight, size),
    );

    Path rectangle10Path = Path()
          ..moveTo(xConv(169, realWidth, size), yConv(258.88, realHeight, size))
          ..lineTo(xConv(169, realWidth, size), yConv(273.83, realHeight, size))
          ..quadraticBezierTo(
              xConv(184.91, realWidth, size),
              yConv(298.56, realHeight, size),
              xConv(197.64, realWidth, size),
              yConv(273.83, realHeight, size))
          ..lineTo(
              xConv(197.64, realWidth, size), yConv(258.88, realHeight, size))
        //
        ;

    final rectangle10Paint = Paint()
          ..shader = const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: AppColors.neckRectangle10,
          ).createShader(rectangle10)
        //
        ;

    rectangle10Path = rectangle10Path.transform(rotatePath(
        Offset(xConv(184.91, realWidth, size), yConv(273.96, realHeight, size)),
        -10));
    drawPathWithStroke(canvas, rectangle10Path, rectangle10Paint);

    ///////////////////////////////// [Neck rectangle 10] /////////////////////////////////
    ///
    ///////////////////////////////// [Neck rectangle 141] /////////////////////////////////

    final rectangle141 = Rect.fromCenter(
      center:
          Offset(xConv(181.92, realWidth, size), yConv(266, realHeight, size)),
      width: xConv(18.21, realWidth, size),
      height: yConv(14.3, realHeight, size),
    );

    Path rectangle141Path = Path()
          ..moveTo(
              xConv(172.3, realWidth, size), yConv(259.15, realHeight, size))
          ..lineTo(
              xConv(172.3, realWidth, size), yConv(264.62, realHeight, size))
          ..quadraticBezierTo(
              xConv(181.91, realWidth, size),
              yConv(274, realHeight, size),
              xConv(190.92, realWidth, size),
              yConv(264.62, realHeight, size))
          ..lineTo(
              xConv(190.92, realWidth, size), yConv(259.15, realHeight, size))
        //
        ;

    final rectangle141Paint = Paint()
          ..shader = const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: AppColors.neckRectangle141,
          ).createShader(rectangle141)
        //
        ;

    rectangle141Path =
        rectangle141Path.transform(rotatePath(rectangle141.center, -10));

    drawPathWithStroke(canvas, rectangle141Path, rectangle141Paint);

    ///////////////////////////////// [Neck rectangle 141] /////////////////////////////////
    ///
    ///////////////////////////////// [Neck rectangle 8] /////////////////////////////////

    final rectangle8 = Rect.fromCenter(
      center: Offset(
          xConv(178.92, realWidth, size), yConv(247.96, realHeight, size)),
      width: xConv(16.75, realWidth, size),
      height: yConv(19.57, realHeight, size),
    );

    Path rectangle8Path = Path()
          ..moveTo(
              xConv(170.37, realWidth, size), yConv(257.8, realHeight, size))
          ..lineTo(
              xConv(170.37, realWidth, size), yConv(246.8, realHeight, size))
          ..quadraticBezierTo(
              xConv(178.93, realWidth, size),
              yConv(236.96, realHeight, size),
              xConv(187.1, realWidth, size),
              yConv(246.8, realHeight, size))
          ..lineTo(
              xConv(187.12, realWidth, size), yConv(257.8, realHeight, size))
        //
        ;

    final rectangle8Paint = Paint()
          ..shader = const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: AppColors.neckRectangle141,
          ).createShader(rectangle8)
        //
        ;

    rectangle8Path =
        rectangle8Path.transform(rotatePath(rectangle8.center, -10));

    drawPathWithStroke(canvas, rectangle8Path, rectangle8Paint);

    ///////////////////////////////// [Neck rectangle 8] /////////////////////////////////
    ///
    ///////////////////////////////// [Neck rectangle 9] /////////////////////////////////

    final rectangle9 = Rect.fromCenter(
      center: Offset(
          xConv(181.92, realWidth, size), yConv(264.96, realHeight, size)),
      width: xConv(16.75, realWidth, size),
      height: yConv(14.55, realHeight, size),
    );

    Path rectangle9Path = Path()
          ..moveTo(
              xConv(173.3, realWidth, size), yConv(257.5, realHeight, size))
          ..lineTo(
              xConv(170.3, realWidth, size), yConv(263.42, realHeight, size))
          ..quadraticBezierTo(
              xConv(181.91, realWidth, size),
              yConv(272.96, realHeight, size),
              xConv(190.1, realWidth, size),
              yConv(263.42, realHeight, size))
          ..lineTo(
              xConv(190.1, realWidth, size), yConv(257.5, realHeight, size))
        //
        ;

    final rectangle9Paint = Paint()
          ..shader = const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: AppColors.neckRectangle141,
          ).createShader(rectangle9)
        //
        ;

    rectangle9Path =
        rectangle9Path.transform(rotatePath(rectangle9.center, -10));

    drawPathWithStroke(canvas, rectangle9Path, rectangle9Paint);

    ///////////////////////////////// [Neck rectangle 9] /////////////////////////////////
    ///
  }
}
