import 'package:flutter/material.dart';
import 'package:walle_fteam/utils/colors.dart';

import '../global_functions.dart';

class Wheels {
  final Canvas canvas;
  final Size size;
  final double realHeight;
  final double realWidth;

  Wheels(this.canvas, this.size, this.realHeight, this.realWidth) {
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

  _drawBottomWheel(Offset position, {bool small = true}) {
    final wheelsBottomPaint = Paint()..color = Colors.black;
    final wheelBottomHeight = size.height * .0032;

    if (small) {
      final smallWheelRect = Rect.fromCenter(
          center: position,
          width: size.width * .0336,
          height: wheelBottomHeight);
      canvas.drawRect(smallWheelRect, wheelsBottomPaint);
    } else {
      final bigWheelRect = Rect.fromCenter(
          center: position,
          width: size.width * .0487,
          height: wheelBottomHeight);
      canvas.drawRect(bigWheelRect, wheelsBottomPaint);
    }
  }

  void _draw() {
    ////////////// {TOP BIG PART FOOT} //////////////

    final bigWheelDimensions = Offset(size.width * .2485, size.height * .0878);

    final leftBigWheelCenterPos = Offset(size.width * .338, size.height * .946);
    final rightBigWheelCenterPos =
        Offset(size.width * .658, size.height * .946);

    final leftBigWheelRect = Rect.fromCenter(
        center: leftBigWheelCenterPos,
        width: bigWheelDimensions.dx,
        height: bigWheelDimensions.dy);

    final rightBigWheelRect = Rect.fromCenter(
        center: rightBigWheelCenterPos,
        width: bigWheelDimensions.dx,
        height: bigWheelDimensions.dy);

    final bigWheelPaint = Paint()
          ..shader = const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: AppColors.bigWheelGradint,
          ).createShader(leftBigWheelRect)
        //
        ;

    final leftWheelPath = Path()..addRect(leftBigWheelRect);
    final rightWheelPath = Path()..addRect(rightBigWheelRect);

    drawPathWithStroke(canvas, leftWheelPath, bigWheelPaint,
        strokeColor: AppColors.middleBigWheelsLayer, strokeWidth: 3);
    drawPathWithStroke(canvas, rightWheelPath, bigWheelPaint,
        strokeColor: AppColors.middleBigWheelsLayer, strokeWidth: 3);

    ////////////// {TOP BIG PART FOOT} //////////////

    ////////////// {MIDDLE BIG PART FOOT} //////////////

    final middlePartsPaint = Paint()..color = AppColors.middleBigWheelsLayer;

    /// middleType[columnIndex + 1][rowIndex + 1]

    final middleType11 = Path()
          ..moveTo(size.width * .224, size.height * .9175)
          ..lineTo(size.width * .224, size.height * .9235)
          ..lineTo(size.width * .2453, size.height * .9235)
          ..lineTo(size.width * .264, size.height * .92)
          ..lineTo(size.width * .264, size.height * .913)
        //
        ;
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

    drawPathWithStroke(canvas, middleType11, middlePartsPaint);
    drawPathWithStroke(canvas, middleType12, middlePartsPaint);
    drawPathWithStroke(canvas, middleType13, middlePartsPaint);

    drawPathWithStroke(canvas, middleType21, middlePartsPaint);
    drawPathWithStroke(canvas, middleType22, middlePartsPaint);
    drawPathWithStroke(canvas, middleType23, middlePartsPaint);

    drawPathWithStroke(canvas, middleType31, middlePartsPaint);
    drawPathWithStroke(canvas, middleType32, middlePartsPaint);

    ////////////// {[Rectangles - LEFT]} //////////////

    _drawReactangle(
        Offset(size.width * .335, size.height * .93), middlePartsPaint);
    _drawReactangle(
        Offset(size.width * .335, size.height * .955), middlePartsPaint,
        small: false);
    _drawReactangle(
        Offset(size.width * .335, size.height * .98), middlePartsPaint,
        small: false);

    ////////////// {[Rectangles - LEFT]} //////////////

    ////////////// {MIDDLE BIG PART FOOT} //////////////

    ////////////// {BOTTOM PART FOOT} //////////////

    final wheelBottomTopDistancePos = size.height * .993;

    for (var i = .24; i <= .752; i += .06) {
      _drawBottomWheel(Offset(size.width * i, wheelBottomTopDistancePos));
      if (i == .42) {
        i += .13;
        _drawBottomWheel(Offset(size.width * i, wheelBottomTopDistancePos));
      }
      if (i == .3 || i == .36 || i == .61 || i == .67) {
        _drawBottomWheel(Offset(size.width * i, wheelBottomTopDistancePos),
            small: false);
      }
    }

    ////////////// {BOTTOM PART FOOT} //////////////
  }
}
