import 'package:flutter/material.dart';
import 'package:walle_fteam/utils/colors.dart';
import 'package:walle_fteam/walle/global_functions.dart';

class Chest {
  final Canvas canvas;
  final Size size;
  final double realHeight;
  final double realWidth;

  Chest(this.canvas, this.size, this.realHeight, this.realWidth) {
    _draw();
  }

  _drawOvalYellow(
      {double x = 0, double y = 0, double height = 2.26, double width = 22.5}) {
    final ovalYellow = Rect.fromCenter(
        center: Offset(xConv(x, realWidth, size), yConv(y, realHeight, size)),
        width: width,
        height: height);

    final ovalPaint = Paint()
          ..shader = const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: AppColors.chestOvalYellow)
              .createShader(ovalYellow)
        //
        ;

    canvas.drawOval(ovalYellow, ovalPaint);
  }

  _drawRadialRectangle(
      {double x = 100,
      double y = 100,
      double height = 29,
      double width = 20,
      List<Color> colors = AppColors.chestRadialGradient}) {
    final rectangle = Rect.fromCenter(
        center: Offset(xConv(x, realWidth, size), yConv(y, realHeight, size)),
        width: xConv(width, realWidth, size),
        height: yConv(height, realHeight, size));

    final rectanglePath = Path()..addRect(rectangle);

    final radialPaint = Paint()
          ..shader = RadialGradient(colors: colors).createShader(rectangle)
        //
        ;

    drawPathWithStroke(canvas, rectanglePath, radialPaint, strokeWidth: 3);
  }

  _drawBaseChest(Offset position,
      {AlignmentGeometry begin = Alignment.topCenter,
      AlignmentGeometry end = Alignment.bottomCenter,
      List<Color> colors = AppColors.chestBaseGradient,
      double width = 52,
      double height = 71}) {
    final chestBaseRect = Rect.fromCenter(
        center: position,
        width: xConv(width, realWidth, size),
        height: yConv(height, realHeight, size));

    final chestBasePaint = Paint()
          ..shader = LinearGradient(
            begin: begin,
            end: end,
            colors: colors,
          ).createShader(chestBaseRect)
        //
        ;

    final chestPath = Path()..addRect(chestBaseRect);

    drawPathWithStroke(canvas, chestPath, chestBasePaint, strokeWidth: 3);
  }

  _drawChestLeft() {
    _drawBaseChest(
        Offset(xConv(161, realWidth, size), yConv(432, realHeight, size)));

    _drawRadialRectangle(x: 151, y: 450, width: 20, height: 29);
    _drawRadialRectangle(x: 160, y: 417, width: 43.5, height: 28);

    ////////// {Red Elipse} //////////

    final redElipse = Rect.fromCircle(
        center:
            Offset(xConv(151, realWidth, size), yConv(449, realHeight, size)),
        radius: xConv(10, realWidth, size));

    final redElipsePaint = Paint()
          ..shader = const RadialGradient(colors: AppColors.chestRadialRED)
              .createShader(redElipse)
        //
        ;

    canvas.drawCircle(
        redElipse.center, xConv(10, realWidth, size), redElipsePaint);

    //// Light

    final light = Rect.fromCenter(
        center:
            Offset(xConv(145, realWidth, size), yConv(447, realHeight, size)),
        width: xConv(2.86, realWidth, size),
        height: yConv(4.53, realHeight, size));

    final lightRadial = Paint()
          ..shader = const RadialGradient(colors: AppColors.chestRadialREDLIGHT)
              .createShader(light)
        //
        ;

    canvas.drawOval(light, lightRadial);

    ////////// {Red Elipse} //////////
  }

  _drawChestRight() {
    _drawBaseChest(
        Offset(xConv(213, realWidth, size), yConv(432, realHeight, size)));

    final insideRectangle = Rect.fromCenter(
        center:
            Offset(xConv(213, realWidth, size), yConv(432, realHeight, size)),
        width: xConv(47.5, realWidth, size),
        height: yConv(61.3, realHeight, size));

    final insideRectanglePath = Path()..addRect(insideRectangle);

    final insideRectanglePaint = Paint()..color = AppColors.insideRectangleGrey;

    drawPathWithStroke(canvas, insideRectanglePath, insideRectanglePaint);

    /////////////////////// {YELLOW OVAl} ///////////////////////

    double positionY = 411;
    for (int i = 0; i < 11; i++) {
      positionY += 3.5;
      _drawOvalYellow(x: 220, y: positionY);
    }
    _drawOvalYellow(x: 220, y: 452, height: 7, width: 22.5);

    /////////////////////// {YELLOW OVAl} ///////////////////////

    /////////////////////// {SUN} ///////////////////////

    final sun = Rect.fromCircle(
        center:
            Offset(xConv(200, realWidth, size), yConv(412, realHeight, size)),
        radius: xConv(1.7, realWidth, size));

    final sunPath = Path()..addOval(sun);

    drawPathWithStroke(
        canvas, sunPath, Paint()..color = AppColors.insideRectangleGrey,
        strokeColor: AppColors.chestYellow,
        strokeWidth: xConv(2.6, realWidth, size));

    /////////////////////// {SUN} ///////////////////////
  }

  _draw() {
    _drawChestLeft();
    _drawChestRight();
  }
}
