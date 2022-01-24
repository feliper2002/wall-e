import 'package:flutter/material.dart';
import 'package:walle_fteam/utils/colors.dart';

import '../../global_functions.dart';

class RightWheel {
  final Canvas canvas;
  final Size size;
  final double realHeight;
  final double realWidth;

  RightWheel(this.canvas, this.size, this.realHeight, this.realWidth) {
    _draw();
  }

  _drawReactangle(Offset center, Paint paint, {bool small = true}) {
    Rect rectangle;
    if (small) {
      final smallRectangleDimensions =
          Offset(size.width * .245, size.height * .0015);
      rectangle = Rect.fromCenter(
          center: center,
          width: smallRectangleDimensions.dx,
          height: smallRectangleDimensions.dy);
    } else {
      final bigRectangleDimensions =
          Offset(size.width * .245, size.height * .0026);
      rectangle = Rect.fromCenter(
          center: center,
          width: bigRectangleDimensions.dx,
          height: bigRectangleDimensions.dy);
    }
    canvas.drawRect(rectangle, paint);
  }

  _drawWheel({Offset center = Offset.zero}) {
    final bigWheelDimensions = Offset(size.width * .2485, size.height * .0878);
    final bigWheelRect = Rect.fromCenter(
        center: center,
        width: bigWheelDimensions.dx,
        height: bigWheelDimensions.dy);

    final bigWheelPaint = Paint()
          ..shader = const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: AppColors.bigWheelGradint,
          ).createShader(bigWheelRect)
        //
        ;
    final wheelPath = Path()..addRect(bigWheelRect);

    drawPathWithStroke(canvas, wheelPath, bigWheelPaint,
        strokeColor: AppColors.middleBigWheelsLayer, strokeWidth: 3);
  }

  _draw() {
    /// [RIGHT Wheel]
    _drawWheel(center: Offset(size.width * .658, size.height * .946));

    final middlePartsPaint = Paint()..color = AppColors.middleBigWheelsLayer;

    /// middleType[columnIndex + 1][rowIndex + 1]

    double soma1 = 0;
    for (var i = 0; i < 3; i++) {
      final middleType1 = Path()
            ..moveTo(xConv(204.21, realWidth, size),
                yConv(611.9, realHeight, size, soma: soma1))
            ..lineTo(xConv(204.21, realWidth, size),
                yConv(615.45, realHeight, size, soma: soma1))
            ..lineTo(xConv(212.58, realWidth, size),
                yConv(615.45, realHeight, size, soma: soma1))
            ..lineTo(xConv(218.9, realWidth, size),
                yConv(613.66, realHeight, size, soma: soma1))
            ..lineTo(xConv(218.9, realWidth, size),
                yConv(608.47, realHeight, size, soma: soma1))
            ..close()
          //
          ;
      drawPathWithStroke(canvas, middleType1, middlePartsPaint);
      soma1 += .025;
    }

    double soma2 = 0;
    for (var i = 0; i < 3; i++) {
      final middleType2 = Path()
            ..moveTo(xConv(225, realWidth, size),
                yConv(607.7, realHeight, size, soma: soma2))
            ..lineTo(xConv(225, realWidth, size),
                yConv(612.95, realHeight, size, soma: soma2))
            ..lineTo(xConv(229.7, realWidth, size),
                yConv(611.3, realHeight, size, soma: soma2))
            ..lineTo(xConv(238.76, realWidth, size),
                yConv(616.41, realHeight, size, soma: soma2))
            ..lineTo(xConv(245.31, realWidth, size),
                yConv(616.41, realHeight, size, soma: soma2))
            ..lineTo(xConv(245.31, realWidth, size),
                yConv(612.95, realHeight, size, soma: soma2))
            ..lineTo(xConv(231.12, realWidth, size),
                yConv(605.54, realHeight, size, soma: soma2))
            ..close()
          //
          ;
      drawPathWithStroke(canvas, middleType2, middlePartsPaint);
      soma2 += .025;
    }

    double soma3 = 0;
    for (var i = 0; i < 3; i++) {
      final middleType3 = Path()
            ..moveTo(xConv(250, realWidth, size),
                yConv(613, realHeight, size, soma: soma3))
            ..lineTo(xConv(250, realWidth, size),
                yConv(616.58, realHeight, size, soma: soma3))
            ..lineTo(xConv(256, realWidth, size),
                yConv(616.58, realHeight, size, soma: soma3))
            ..lineTo(xConv(265.3, realWidth, size),
                yConv(611.45, realHeight, size, soma: soma3))
            ..lineTo(xConv(270, realWidth, size),
                yConv(612.36, realHeight, size, soma: soma3))
            ..lineTo(xConv(270, realWidth, size),
                yConv(607.9, realHeight, size, soma: soma3))
            ..lineTo(xConv(264.34, realWidth, size),
                yConv(606.18, realHeight, size, soma: soma3))
          //
          ;
      drawPathWithStroke(canvas, middleType3, middlePartsPaint);
      soma3 += .024;
    }

    double soma4 = 0;
    for (var i = 0; i < 3; i++) {
      final middleType4 = Path()
            ..moveTo(xConv(277.4, realWidth, size),
                yConv(608.94, realHeight, size, soma: soma4))
            ..lineTo(xConv(277.4, realWidth, size),
                yConv(614.05, realHeight, size, soma: soma4))
            ..lineTo(xConv(283.12, realWidth, size),
                yConv(615.9, realHeight, size, soma: soma4))
            ..lineTo(xConv(289.9, realWidth, size),
                yConv(615.9, realHeight, size, soma: soma4))
            ..lineTo(xConv(291.4, realWidth, size),
                yConv(612.73, realHeight, size, soma: soma4))
            ..lineTo(xConv(280.13, realWidth, size),
                yConv(608.94, realHeight, size, soma: soma4))
            ..close()
          //
          ;
      drawPathWithStroke(canvas, middleType4, middlePartsPaint);
      soma4 += .024;
    }

    ////////////// {[Rectangles - LEFT]} //////////////

    _drawReactangle(
        Offset(xConv(247.68, realWidth, size), yConv(620, realHeight, size)),
        middlePartsPaint);
    _drawReactangle(
        Offset(xConv(247.68, realWidth, size), yConv(636.6, realHeight, size)),
        middlePartsPaint,
        small: false);
    _drawReactangle(
        Offset(xConv(247.68, realWidth, size), yConv(653.66, realHeight, size)),
        middlePartsPaint,
        small: false);
  }
}
