import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:walle_fteam/utils/colors.dart';
import 'package:walle_fteam/walle/parts/pupils.dart';

import '../global_functions.dart';

class Eyes {
  final Canvas canvas;
  final Size size;
  final double realHeight;
  final double realWidth;

  Eyes(this.canvas, this.size, this.realHeight, this.realWidth) {
    _draw();
  }

  _drawEye(
    double x,
    double y, {
    double height = 81.7,
    double width = 107.4,
    Color color = AppColors.eyeBase,
    List<Color>? colors,
    Radius topLeft = const Radius.circular(260),
    Radius topRight = const Radius.circular(520),
    Radius bottomLeft = const Radius.circular(320),
    Radius bottomRight = const Radius.circular(47),
    double rotation = -170,
    double strokeWidth = 2,
    Color strokeColor = Colors.black,
  }) {
    final eye = Rect.fromCenter(
      center: Offset(xConv(x, realWidth, size), yConv(y, realHeight, size)),
      width: xConv(width, realWidth, size),
      height: yConv(height, realHeight, size),
    );
    final eyeRadius = RRect.fromRectAndCorners(
      eye,
      topLeft: topLeft,
      topRight: topRight,
      bottomLeft: bottomLeft,
      bottomRight: bottomRight,
    );
    Path eyeRightPath = Path()..addRRect(eyeRadius);

    late Paint eyePaint;

    if (colors != null) {
      eyePaint = Paint()
            ..color = color
            ..shader = RadialGradient(colors: colors).createShader(eye)
          //
          ;
    } else {
      eyePaint = Paint()..color = color
          //
          ;
    }

    eyeRightPath = eyeRightPath.transform(rotatePath(eye.center, rotation));

    drawPathWithStroke(canvas, eyeRightPath, eyePaint,
        strokeWidth: strokeWidth, strokeColor: strokeColor);
  }

  _drawEyeLight(double x, double y,
      {double radius = 10, List<Color> colors = AppColors.eyeGlassShiny}) {
    final light = Rect.fromCircle(
        center: Offset(xConv(x, realWidth, size), yConv(y, realHeight, size)),
        radius: radius);
    final lightPaint = Paint()
          ..shader = RadialGradient(colors: colors).createShader(light)
        //
        ;
    canvas.drawCircle(
        Offset(xConv(x, realWidth, size), yConv(y, realHeight, size)),
        radius,
        lightPaint);
  }

  _drawSmallBolt(double x, double y,
      {double radius = 10,
      double strokeWidth = 2,
      List<Color> colors = AppColors.eyeSmallBoltRadial}) {
    final bolt = Rect.fromCircle(
        center: Offset(xConv(x, realWidth, size), yConv(y, realHeight, size)),
        radius: radius);

    final boltPaint = Paint()
          ..shader = RadialGradient(colors: colors).createShader(bolt)
        //
        ;

    canvas.drawCircle(
        bolt.center,
        radius,
        Paint()
          ..color = Colors.black
          ..style = PaintingStyle.stroke
          ..strokeWidth = strokeWidth);
    canvas.drawCircle(bolt.center, radius, boltPaint);
  }

  _drawBigBolt(
    double x,
    double y, {
    double smallRadius = 10,
    double bigRadius = 10,
    double strokeWidth = 2,
    List<Color> colorsSmall = AppColors.eyeSmallBoltRadial,
    List<Color> colorsBig = AppColors.eyeSmallBoltRadial,
  }) {
    final smallBolt = Rect.fromCircle(
        center: Offset(xConv(x, realWidth, size), yConv(y, realHeight, size)),
        radius: smallRadius);
    final bigBolt = Rect.fromCircle(
        center: Offset(xConv(x, realWidth, size), yConv(y, realHeight, size)),
        radius: bigRadius);

    final boltPaintSmall = Paint()
          ..shader = RadialGradient(colors: colorsSmall).createShader(smallBolt)
        //
        ;

    final boltPaintBig = Paint()
          ..shader = RadialGradient(colors: colorsBig).createShader(bigBolt)
        //
        ;

    canvas.drawCircle(
        smallBolt.center,
        smallRadius,
        Paint()
          ..color = Colors.black
          ..style = PaintingStyle.stroke
          ..strokeWidth = strokeWidth);
    canvas.drawCircle(smallBolt.center, smallRadius, boltPaintSmall);
    canvas.drawCircle(
        bigBolt.center,
        bigRadius,
        Paint()
          ..color = Colors.black
          ..style = PaintingStyle.stroke
          ..strokeWidth = strokeWidth);
    canvas.drawCircle(bigBolt.center, bigRadius, boltPaintBig);
  }

  _draw() {
    final pupilsLeftCenter =
        Offset(xConv(139, realWidth, size), yConv(279, realHeight, size));
    final pupilsRightCenter =
        Offset(xConv(223, realWidth, size), yConv(270, realHeight, size));

    ////////////////////////////////// [Left eye] //////////////////////////////////
    _drawEye(
      132.9,
      288,
      topLeft: const Radius.circular(320),
      topRight: const Radius.circular(47),
      bottomLeft: const Radius.circular(260),
      bottomRight: const Radius.circular(520),
      color: AppColors.eyeBase,
      rotation: -20,
    );
    _drawEye(
      132.9,
      288,
      width: 102.04,
      height: 77.24,
      topLeft: const Radius.circular(320),
      topRight: const Radius.circular(47),
      bottomLeft: const Radius.circular(260),
      bottomRight: const Radius.circular(520),
      colors: AppColors.eyeBaseRadial,
      rotation: -20,
    );

    Pupils(canvas, pupilsCenter: pupilsLeftCenter);

    _drawEyeLight(151, 270.5);

    _drawSmallBolt(95, 278, radius: 3.75);
    _drawSmallBolt(124, 322, radius: 2.5);

    _drawBigBolt(160, 246,
        smallRadius: 2,
        bigRadius: 3.75,
        colorsSmall: AppColors.eyeSmallBoltRadial,
        colorsBig: AppColors.eyeBigBoltRadial);

    ////////////////////////////////// [Left eye] //////////////////////////////////
    ///
    ////////////////////////////////// [Right eye] //////////////////////////////////
    _drawEye(231.9, 274.95, color: AppColors.eyeBase);

    _drawEye(231.9, 274.95,
        width: 102.04, height: 77.24, colors: AppColors.eyeBaseRadial);

    Pupils(canvas, pupilsCenter: pupilsRightCenter);

    _drawEyeLight(235, 270, radius: 6);
    _drawEyeLight(240, 274, radius: 20);

    _drawSmallBolt(264, 260, radius: 3.75);
    _drawSmallBolt(248, 305, radius: 2.5);

    _drawBigBolt(196, 240,
        smallRadius: 2,
        bigRadius: 3.75,
        colorsSmall: AppColors.eyeSmallBoltRadial,
        colorsBig: AppColors.eyeBigBoltRadial);

    ////////////////////////////////// [Right eye] //////////////////////////////////
    ///
  }
}
