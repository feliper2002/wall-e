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
  }
}
