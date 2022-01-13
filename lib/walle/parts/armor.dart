import 'package:flutter/material.dart';
import 'package:walle_fteam/utils/colors.dart';
import 'package:walle_fteam/walle/global_functions.dart';

class Armor {
  final Canvas canvas;
  final Size size;
  final double realHeight;
  final double realWidth;

  Armor(this.canvas, this.size, this.realHeight, this.realWidth) {
    _draw();
  }

  _drawRectangle(Offset position,
      {double width = 53.26,
      double height = 4,
      Color color = AppColors.rectangleBrown}) {
    final rectangle =
        Rect.fromCenter(center: position, width: width, height: height);

    final rectanglePaint = Paint()..color = color;

    canvas.drawRect(rectangle, rectanglePaint);
  }

  _drawArmorLayer(Offset position,
      {AlignmentGeometry begin = Alignment.topCenter,
      AlignmentGeometry end = Alignment.bottomCenter,
      List<Color> colors = AppColors.armorLayer1Gradient,
      double height = 16.5,
      double width = 53.26}) {
    final armorRectLayer1 = Rect.fromCenter(
        center: position,
        width: xConv(width, realWidth, size),
        height: yConv(height, realHeight, size));

    final layer1Paint = Paint()
          ..shader = LinearGradient(
            begin: begin,
            end: end,
            colors: colors,
          ).createShader(armorRectLayer1)
        //
        ;

    canvas.drawRect(armorRectLayer1, layer1Paint);
  }

  _draw() {
    //// {LEFT - 1}
    _drawArmorLayer(
        Offset(xConv(100, realWidth, size), yConv(402, realHeight, size)));

    //// {RIGHT - 1}
    _drawArmorLayer(
        Offset(xConv(274, realWidth, size), yConv(402, realHeight, size)));

    //// {LEFT - 2}
    _drawArmorLayer(
        Offset(xConv(100, realWidth, size), yConv(432, realHeight, size)),
        colors: AppColors.armorLayer2Gradient,
        width: 53.26,
        height: 35);

    //// {RIGHT - 2}
    _drawArmorLayer(
        Offset(xConv(274, realWidth, size), yConv(432, realHeight, size)),
        colors: AppColors.armorLayer2Gradient,
        width: 53.26,
        height: 35);

    //// {LEFT - 3}
    _drawArmorLayer(
        Offset(xConv(100, realWidth, size), yConv(460, realHeight, size)),
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter);

    //// {RIGHT - 3}
    _drawArmorLayer(
        Offset(xConv(274, realWidth, size), yConv(460, realHeight, size)),
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter);

    //// {First - LEFT}
    _drawRectangle(
        Offset(xConv(100, realWidth, size), yConv(412, realHeight, size)));

    //// {First - RIGHT}
    _drawRectangle(
        Offset(xConv(274, realWidth, size), yConv(412, realHeight, size)));

    //// {Second - LEFT}
    _drawRectangle(
        Offset(xConv(100, realWidth, size), yConv(449, realHeight, size)));

    //// {Second - RIGHT}
    _drawRectangle(
        Offset(xConv(274, realWidth, size), yConv(449, realHeight, size)));
  }
}
