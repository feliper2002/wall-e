import 'package:flutter/material.dart';
import 'package:walle_fteam/utils/colors.dart';
import 'package:walle_fteam/walle/global_functions.dart';

class Arms {
  final Canvas canvas;
  final Size size;
  final double realHeight;
  final double realWidth;

  Arms(this.canvas, this.size, this.realHeight, this.realWidth) {
    _draw();
  }

  _drawRectangle(double x, double y,
      {double height = 0,
      double width = 0,
      Color color = Colors.black,
      List<Color>? colors,
      AlignmentGeometry begin = Alignment.topCenter,
      AlignmentGeometry end = Alignment.bottomCenter}) {
    final rectangle = Rect.fromCenter(
        center: Offset(xConv(x, realWidth, size), yConv(y, realHeight, size)),
        width: xConv(width, realWidth, size),
        height: yConv(height, realHeight, size));

    late Paint rectanglePaint;

    if (colors != null) {
      rectanglePaint = Paint()
            ..shader = LinearGradient(begin: begin, end: end, colors: colors)
                .createShader(rectangle)
          //
          ;
    } else {
      rectanglePaint = Paint()..color = color
          //
          ;
    }
    canvas.drawRect(rectangle, rectanglePaint);
  }

  _draw() {
    _drawRectangle(303, 501,
        height: 63.53, width: 6.85, colors: AppColors.armsSupportBase1);
  }
}
