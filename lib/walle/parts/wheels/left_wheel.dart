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

    double soma = 0;
    for (var i = 0; i < 3;) {
      Path middleType11 = Path()
            ..moveTo(size.width * .224, (size.height * .9175) + soma)
            ..lineTo(size.width * .224, (size.height * .9235) + soma)
            ..lineTo(size.width * .2453, (size.height * .9235) + soma)
            ..lineTo(size.width * .264, (size.height * .92) + soma)
            ..lineTo(size.width * .264, (size.height * .913) + soma)
          //
          ;
      drawPathWithStroke(canvas, middleType11, middlePartsPaint);
      soma += .025;
      i++;
    }
    final middleType12 = Path()
          ..moveTo(size.width * .224, size.height * .943)
          ..lineTo(size.width * .224, size.height * .95)
          ..lineTo(size.width * .2453, size.height * .95)
          ..lineTo(size.width * .264, size.height * .946)
          ..lineTo(size.width * .264, size.height * .93853)
        //
        ;
    final middleType13 = Path()
          ..moveTo(size.width * .224, size.height * .9685)
          ..lineTo(size.width * .224, size.height * .974)
          ..lineTo(size.width * .2453, size.height * .974)
          ..lineTo(size.width * .264, size.height * .9715)
          ..lineTo(size.width * .264, size.height * .964)
        //
        ;
    final middleType21 = Path()
          ..moveTo(size.width * .28, size.height * .91)
          ..lineTo(size.width * .28, size.height * .92)
          ..lineTo(size.width * .2928, size.height * .916)
          ..lineTo(size.width * .3177, size.height * .9244)
          ..lineTo(size.width * .3349, size.height * .9244)
          ..lineTo(size.width * .3349, size.height * .91925)
          ..lineTo(size.width * .296, size.height * .908)
        //
        ;
    final middleType22 = Path()
          ..moveTo(size.width * .28, size.height * .937)
          ..lineTo(size.width * .28, size.height * .9445)
          ..lineTo(size.width * .2928, size.height * .9424)
          ..lineTo(size.width * .3177, size.height * .95)
          ..lineTo(size.width * .3349, size.height * .95)
          ..lineTo(size.width * .3349, size.height * .945)
          ..lineTo(size.width * .296, size.height * .934)
        //
        ;
    final middleType23 = Path()
          ..moveTo(size.width * .28, size.height * .9625)
          ..lineTo(size.width * .28, size.height * .97)
          ..lineTo(size.width * .2928, size.height * .968)
          ..lineTo(size.width * .3177, size.height * .976)
          ..lineTo(size.width * .3349, size.height * .976)
          ..lineTo(size.width * .3349, size.height * .97)
          ..lineTo(size.width * .296, size.height * .96)
        //
        ;
    final middleType31 = Path()
          ..moveTo(xConv(130, realWidth, size), yConv(613, realHeight, size))
          ..lineTo(xConv(130, realWidth, size), yConv(616.58, realHeight, size))
          ..lineTo(xConv(136, realWidth, size), yConv(616.58, realHeight, size))
          ..lineTo(
              xConv(145.3, realWidth, size), yConv(611.45, realHeight, size))
          ..lineTo(xConv(150, realWidth, size), yConv(612.36, realHeight, size))
          ..lineTo(xConv(150, realWidth, size), yConv(607.9, realHeight, size))
          ..lineTo(
              xConv(144.34, realWidth, size), yConv(606.18, realHeight, size))
        //
        ;
    final middleType32 = Path()
          ..moveTo(xConv(130, realWidth, size), yConv(630, realHeight, size))
          ..lineTo(xConv(130, realWidth, size), yConv(633.75, realHeight, size))
          ..lineTo(xConv(136, realWidth, size), yConv(633.75, realHeight, size))
          ..lineTo(
              xConv(145.3, realWidth, size), yConv(628.64, realHeight, size))
          ..lineTo(xConv(150, realWidth, size), yConv(629.57, realHeight, size))
          ..lineTo(xConv(150, realWidth, size), yConv(625, realHeight, size))
          ..lineTo(
              xConv(144.34, realWidth, size), yConv(623.3, realHeight, size))
        //
        ;

    // drawPathWithStroke(canvas, middleType12, middlePartsPaint);
    // drawPathWithStroke(canvas, middleType13, middlePartsPaint);

    // drawPathWithStroke(canvas, middleType21, middlePartsPaint);
    // drawPathWithStroke(canvas, middleType22, middlePartsPaint);
    // drawPathWithStroke(canvas, middleType23, middlePartsPaint);

    // drawPathWithStroke(canvas, middleType31, middlePartsPaint);
    // drawPathWithStroke(canvas, middleType32, middlePartsPaint);

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
