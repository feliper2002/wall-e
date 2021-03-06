import 'package:flutter/material.dart';
import 'package:walle_fteam/utils/colors.dart';

import '../../global_functions.dart';

class LeftWheel {
  final Canvas canvas;
  final Size size;
  final double realHeight;
  final double realWidth;

  LeftWheel(this.canvas, this.size, this.realHeight, this.realWidth) {
    _draw();
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

  _draw() {
    /// [LEFT Wheel]
    _drawWheel(center: Offset(size.width * .338, size.height * .946));

    final middlePartsPaint = Paint()..color = AppColors.middleBigWheelsLayer;

    /// middleType[columnIndex + 1][rowIndex + 1]

    double soma1 = 0;
    for (var i = 0; i < 3; i++) {
      Path middleType1 = Path()
            ..moveTo(size.width * .224, size.height * (.9175 + soma1))
            ..lineTo(size.width * .224, size.height * (.9235 + soma1))
            ..lineTo(size.width * .2453, size.height * (.9235 + soma1))
            ..lineTo(size.width * .264, size.height * (.92 + soma1))
            ..lineTo(size.width * .264, size.height * (.913 + soma1))
          //
          ;
      drawPathWithStroke(canvas, middleType1, middlePartsPaint);
      soma1 += .025;
    }

    double soma2 = 0;
    for (var i = 0; i < 3; i++) {
      final middleType2 = Path()
            ..moveTo(size.width * .28, size.height * (.91 + soma2))
            ..lineTo(size.width * .28, size.height * (.92 + soma2))
            ..lineTo(size.width * .2928, size.height * (.916 + soma2))
            ..lineTo(size.width * .3177, size.height * (.9244 + soma2))
            ..lineTo(size.width * .3349, size.height * (.9244 + soma2))
            ..lineTo(size.width * .3349, size.height * (.91925 + soma2))
            ..lineTo(size.width * .296, size.height * (.908 + soma2))
          //
          ;
      drawPathWithStroke(canvas, middleType2, middlePartsPaint);
      soma2 += .025;
    }

    double soma3 = 0;
    for (var i = 0; i < 3; i++) {
      final middleType3 = Path()
            ..moveTo(xConv(130, realWidth, size),
                yConv(613, realHeight, size, soma: soma3))
            ..lineTo(xConv(130, realWidth, size),
                yConv(616.58, realHeight, size, soma: soma3))
            ..lineTo(xConv(136, realWidth, size),
                yConv(616.58, realHeight, size, soma: soma3))
            ..lineTo(xConv(145.3, realWidth, size),
                yConv(611.45, realHeight, size, soma: soma3))
            ..lineTo(xConv(150, realWidth, size),
                yConv(612.36, realHeight, size, soma: soma3))
            ..lineTo(xConv(150, realWidth, size),
                yConv(607.9, realHeight, size, soma: soma3))
            ..lineTo(xConv(144.34, realWidth, size),
                yConv(606.18, realHeight, size, soma: soma3))
          //
          ;
      drawPathWithStroke(canvas, middleType3, middlePartsPaint);
      soma3 += .024;
    }

    double soma4 = 0;
    for (var i = 0; i < 3; i++) {
      final middleType4 = Path()
            ..moveTo(xConv(157.4, realWidth, size),
                yConv(608.94, realHeight, size, soma: soma4))
            ..lineTo(xConv(157.4, realWidth, size),
                yConv(614.05, realHeight, size, soma: soma4))
            ..lineTo(xConv(163.12, realWidth, size),
                yConv(615.9, realHeight, size, soma: soma4))
            ..lineTo(xConv(169.9, realWidth, size),
                yConv(615.9, realHeight, size, soma: soma4))
            ..lineTo(xConv(171.4, realWidth, size),
                yConv(612.73, realHeight, size, soma: soma4))
            ..lineTo(xConv(160.13, realWidth, size),
                yConv(608.94, realHeight, size, soma: soma4))
            ..close()
          //
          ;
      drawPathWithStroke(canvas, middleType4, middlePartsPaint);
      soma4 += .024;
    }

    ////////////// {[Rectangles - LEFT]} //////////////

    _drawReactangle(
        Offset(size.width * .335, size.height * .93), middlePartsPaint);
    _drawReactangle(
        Offset(size.width * .335, size.height * .955), middlePartsPaint,
        small: false);
    _drawReactangle(
        Offset(size.width * .335, size.height * .98), middlePartsPaint,
        small: false);
  }
}
