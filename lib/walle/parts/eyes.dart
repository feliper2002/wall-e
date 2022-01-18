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

    ////////////////////////////////// [Left eye] //////////////////////////////////
    ///
    ////////////////////////////////// [Right eye] //////////////////////////////////
    _drawEye(231.9, 274.95, color: AppColors.eyeBase);

    _drawEye(231.9, 274.95,
        width: 102.04, height: 77.24, colors: AppColors.eyeBaseRadial);

    Pupils(canvas, pupilsCenter: pupilsRightCenter);

    ////////////////////////////////// [Right eye] //////////////////////////////////
    ///
  }
}
