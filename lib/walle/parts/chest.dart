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

  _drawBarrier(
      {double x = 0,
      double y = 0,
      double height = 2,
      double width = 33,
      Color color = AppColors.bg}) {
    final barrier = Rect.fromCenter(
        center: Offset(xConv(x, realWidth, size), yConv(y, realHeight, size)),
        width: xConv(width, realWidth, size),
        height: yConv(height, realHeight, size));

    final barrierPaint = Paint()..color = color;
    final barrierPath = Path()..addRect(barrier);

    drawPathWithStroke(canvas, barrierPath, barrierPaint);
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

    final sunColor = Paint()..color = AppColors.chestYellow;

    drawPathWithStroke(
        canvas, sunPath, Paint()..color = AppColors.insideRectangleGrey,
        strokeColor: AppColors.chestYellow,
        strokeWidth: xConv(2.6, realWidth, size));

    ///////////////////////////// [SUN LIGHT 1] //////////////////////////////

    final sunLight1 = Path()
          ..moveTo(
              xConv(200.5, realWidth, size), yConv(408.53, realHeight, size))
          ..lineTo(
              xConv(199.95, realWidth, size), yConv(407.78, realHeight, size))
          ..quadraticBezierTo(
            xConv(200.5, realWidth, size),
            yConv(400.78, realHeight, size),
            xConv(201.12, realWidth, size),
            yConv(407.78, realHeight, size),
          )
          ..lineTo(
              xConv(200.5, realWidth, size), yConv(409.53, realHeight, size))
          ..close()
        //
        ;
    canvas.drawPath(sunLight1, sunColor);

    ///////////////////////////// [SUN LIGHT 2] //////////////////////////////

    final sunLight2 = Path()
          ..moveTo(
              xConv(207.77, realWidth, size), yConv(410.45, realHeight, size))
          ..lineTo(
              xConv(203.57, realWidth, size), yConv(408.8, realHeight, size))
          ..quadraticBezierTo(
            xConv(204.78, realWidth, size),
            yConv(408.22, realHeight, size),
            xConv(204.3, realWidth, size),
            yConv(409.7, realHeight, size),
          )
          ..lineTo(
              xConv(207.77, realWidth, size), yConv(410.45, realHeight, size))
          ..close()
        //
        ;
    canvas.drawPath(sunLight2, sunColor);

    ///////////////////////////// [SUN LIGHT 3] //////////////////////////////

    final sunLight3 = Path()
          ..moveTo(
              xConv(203.7, realWidth, size), yConv(412.16, realHeight, size))
          ..lineTo(
              xConv(205.19, realWidth, size), yConv(408.8, realHeight, size))
          ..quadraticBezierTo(
            xConv(206.8, realWidth, size),
            yConv(412.68, realHeight, size),
            xConv(205.17, realWidth, size),
            yConv(413.17, realHeight, size),
          )
          ..lineTo(
              xConv(203.7, realWidth, size), yConv(412.68, realHeight, size))
          ..close()
        //
        ;
    canvas.drawPath(sunLight3, sunColor);

    ///////////////////////////// [SUN LIGHT 4] //////////////////////////////

    final sunLight4 = Path()
          ..moveTo(
              xConv(202.77, realWidth, size), yConv(414.19, realHeight, size))
          ..lineTo(
              xConv(204.55, realWidth, size), yConv(415.74, realHeight, size))
          ..quadraticBezierTo(
            xConv(205.12, realWidth, size),
            yConv(416.8, realHeight, size),
            xConv(203.57, realWidth, size),
            yConv(416.55, realHeight, size),
          )
          ..lineTo(
              xConv(202.77, realWidth, size), yConv(414.19, realHeight, size))
          ..close()
        //
        ;
    canvas.drawPath(sunLight4, sunColor);

    ///////////////////////////// [SUN LIGHT 5] //////////////////////////////

    final sunLight5 = Path()
          ..moveTo(
              xConv(200.52, realWidth, size), yConv(415.86, realHeight, size))
          ..lineTo(
              xConv(201.17, realWidth, size), yConv(417.68, realHeight, size))
          ..quadraticBezierTo(
            xConv(200.52, realWidth, size),
            yConv(419.03, realHeight, size),
            xConv(199.9, realWidth, size),
            yConv(417.68, realHeight, size),
          )
          ..lineTo(
              xConv(200.52, realWidth, size), yConv(415.86, realHeight, size))
          ..close()
        //
        ;
    canvas.drawPath(sunLight5, sunColor);

    ///////////////////////////// [SUN LIGHT 6] //////////////////////////////

    final sunLight6 = Path()
          ..moveTo(
              xConv(198.26, realWidth, size), yConv(414.89, realHeight, size))
          ..lineTo(
              xConv(197.52, realWidth, size), yConv(416.43, realHeight, size))
          ..quadraticBezierTo(
            xConv(195.69, realWidth, size),
            yConv(416.8, realHeight, size),
            xConv(196.66, realWidth, size),
            yConv(415.65, realHeight, size),
          )
          ..lineTo(
              xConv(198.26, realWidth, size), yConv(414.89, realHeight, size))
          ..close()
        //
        ;
    canvas.drawPath(sunLight6, sunColor);

    ///////////////////////////// [SUN LIGHT 7] //////////////////////////////

    final sunLight7 = Path()
          ..moveTo(
              xConv(197.3, realWidth, size), yConv(412.68, realHeight, size))
          ..lineTo(
              xConv(195.76, realWidth, size), yConv(413.23, realHeight, size))
          ..quadraticBezierTo(
            xConv(194.16, realWidth, size),
            yConv(412.66, realHeight, size),
            xConv(195.76, realWidth, size),
            yConv(412.15, realHeight, size),
          )
          ..lineTo(
              xConv(197.3, realWidth, size), yConv(412.68, realHeight, size))
          ..close()
        //
        ;
    canvas.drawPath(sunLight7, sunColor);

    ///////////////////////////// [SUN LIGHT 8] //////////////////////////////

    final sunLight8 = Path()
          ..moveTo(
              xConv(198.26, realWidth, size), yConv(410.45, realHeight, size))
          ..lineTo(
              xConv(196.5, realWidth, size), yConv(409.63, realHeight, size))
          ..quadraticBezierTo(
            xConv(196.15, realWidth, size),
            yConv(408.28, realHeight, size),
            xConv(197.48, realWidth, size),
            yConv(408.88, realHeight, size),
          )
          ..lineTo(
              xConv(198.26, realWidth, size), yConv(410.45, realHeight, size))
          ..close()
        //
        ;
    canvas.drawPath(sunLight8, sunColor);
    /////////////////////// {SUN} ///////////////////////

    /////////////////////// {AIR} ///////////////////////

    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(
                xConv(160, realWidth, size), yConv(417, realHeight, size)),
            width: xConv(34.5, realWidth, size),
            height: yConv(18.34, realHeight, size)),
        Paint()..color = Colors.black);

    _drawBarrier(x: 154, y: 417, width: 3, height: 18.3);
    _drawBarrier(x: 166, y: 417, width: 3, height: 18.3);

    _drawBarrier(x: 160, y: 412);
    _drawBarrier(x: 160, y: 417);
    _drawBarrier(x: 160, y: 421.8);

    /////////////////////// {AIR} ///////////////////////
  }

  _draw() {
    _drawChestLeft();
    _drawChestRight();
  }
}
