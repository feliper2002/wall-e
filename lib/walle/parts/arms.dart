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

  _drawHandSmallElipse(double x, double y,
      {double height = 27,
      double width = 22,
      double rotationDegrees = 28.45,
      List<Color> colors = AppColors.handsSmallElipse}) {
    final elipse = Rect.fromCenter(
      center: Offset(xConv(x, realWidth, size), yConv(y, realHeight, size)),
      width: xConv(width, realWidth, size),
      height: yConv(height, realHeight, size),
    );

    final elipsePaint = Paint()
          ..shader = RadialGradient(colors: colors).createShader(elipse)
        //
        ;

    Path elipsePath = Path()..addOval(elipse);

    elipsePath =
        elipsePath.transform(rotatePath(elipse.center, rotationDegrees));

    drawPathWithStroke(canvas, elipsePath, elipsePaint);
  }

  _drawTopElipse(
      {double x = 83.22,
      double y = 464.93,
      double height = 36.28,
      double width = 41.63}) {
    final topElipse = Rect.fromCenter(
        center: Offset(xConv(x, realWidth, size), yConv(y, realHeight, size)),
        height: yConv(height, realHeight, size),
        width: xConv(width, realWidth, size));

    final topElipsePaint = Paint()..color = AppColors.armsTopElipse;

    canvas.drawOval(topElipse, topElipsePaint);
  }

  _drawBottomElipse(
      {double x = 39.3,
      double y = 533,
      double height = 18.87,
      double width = 37.1}) {
    final bottomElipse = Rect.fromCenter(
        center: Offset(xConv(x, realWidth, size), yConv(y, realHeight, size)),
        height: yConv(height, realHeight, size),
        width: xConv(width, realWidth, size));

    final bottomElipsePaint = Paint()
          ..shader = const RadialGradient(colors: AppColors.armsBottomElipse)
              .createShader(bottomElipse)
        //
        ;

    canvas.drawOval(bottomElipse, bottomElipsePaint);
  }

  _drawArmJoin(double x, double y,
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

  _leftArms() {
    _drawArmJoin(71, 501,
        height: 63.53, width: 6.85, colors: AppColors.armsSupportBase1);

    _drawArmJoin(64, 501,
        height: 55.29, width: 6.7, colors: AppColors.armsSupportBase2);

    _drawArmJoin(59, 501,
        height: 50.77, width: 3.76, color: AppColors.armsSupportBase3);

    ///
    /////////////////////////////////////// [Arm bottom side] ///////////////////////////////////////

    final armBottomSide = Rect.fromCenter(
      center:
          Offset(xConv(60.3, realWidth, size), yConv(505, realHeight, size)),
      width: xConv(78.77, realWidth, size),
      height: yConv(57.42, realHeight, size),
    );

    final armBottomSidePaint = Paint()
          ..shader = const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: AppColors.armsBottomBrown,
          ).createShader(armBottomSide)
        //
        ;

    final armBottomSidePath = Path()
          ..moveTo(
              xConv(67.38, realWidth, size), yConv(476.25, realHeight, size))
          ..lineTo(
              xConv(20.26, realWidth, size), yConv(533.94, realHeight, size))
          ..lineTo(
              xConv(58.84, realWidth, size), yConv(533.13, realHeight, size))
          ..lineTo(
              xConv(60.1, realWidth, size), yConv(520.23, realHeight, size))
          ..lineTo(
              xConv(101.18, realWidth, size), yConv(475.38, realHeight, size))
          ..close()
        //
        ;

    drawPathWithStroke(canvas, armBottomSidePath, armBottomSidePaint);

    /////////////////////////////////////// [Arm bottom side] ///////////////////////////////////////
    ///
    /////////////////////////////////////// [Arm top hand support] ///////////////////////////////////////

    final topHandSupportPaint = Paint()..color = AppColors.armsTopHandSupport;

    final topHandSupportPath = Path()
          ..moveTo(xConv(68.7, realWidth, size), yConv(437.9, realHeight, size))
          ..lineTo(xConv(67.2, realWidth, size), yConv(477.2, realHeight, size))
          ..lineTo(
              xConv(100.7, realWidth, size), yConv(476.33, realHeight, size))
          ..lineTo(xConv(90.3, realWidth, size), yConv(445, realHeight, size))
          ..lineTo(
              xConv(71.66, realWidth, size), yConv(441.92, realHeight, size))
          ..close()
        //
        ;

    drawPathWithStroke(canvas, topHandSupportPath, topHandSupportPaint);

    /////////////////////////////////////// [Arm top hand support] ///////////////////////////////////////
    ///
    /////////////////////////////////////// [Arm top elipse] ///////////////////////////////////////

    _drawTopElipse();

    /////////////////////////////////////// [Arm top elipse] ///////////////////////////////////////
    ///
    /////////////////////////////////////// [Arm bottom elipse] ///////////////////////////////////////

    _drawBottomElipse();

    /////////////////////////////////////// [Arm bottom elipse] ///////////////////////////////////////
    ///
    /////////////////////////////////////// [Arm side] ///////////////////////////////////////

    final armSideLeft = Rect.fromCenter(
        center:
            Offset(xConv(45, realWidth, size), yConv(486, realHeight, size)),
        width: xConv(48, realWidth, size),
        height: yConv(94, realHeight, size));

    final armSidePaint = Paint()
          ..shader = const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: AppColors.armsSideOrange,
          ).createShader(armSideLeft)
        //
        ;

    final armSideLeftPath = Path()
          ..moveTo(
              xConv(21.8, realWidth, size), yConv(494.35, realHeight, size))
          ..lineTo(
              xConv(20.8, realWidth, size), yConv(534.56, realHeight, size))
          ..lineTo(xConv(67.8, realWidth, size), yConv(477.2, realHeight, size))
          ..lineTo(xConv(69.63, realWidth, size), yConv(439, realHeight, size))
          ..close()
        //
        ;
    drawPathWithStroke(canvas, armSideLeftPath, armSidePaint);

    /////////////////////////////////////// [Arm side] ///////////////////////////////////////
    ///
    /////////////////////////////////////// [Hand small elipse] ///////////////////////////////////////

    _drawHandSmallElipse(86, 462);

    /////////////////////////////////////// [Hand small elipse] ///////////////////////////////////////
    ///
  }

  _rightArms() {
    _drawArmJoin(303, 501,
        height: 63.53, width: 6.85, colors: AppColors.armsSupportBase1);

    _drawArmJoin(309, 501,
        height: 55.29, width: 6.7, colors: AppColors.armsSupportBase2);

    _drawArmJoin(314, 501,
        height: 50.77, width: 3.76, color: AppColors.armsSupportBase3);

    /////////////////////////////////////// [Arm bottom side] ///////////////////////////////////////

    final armBottomSide = Rect.fromCenter(
      center:
          Offset(xConv(311.84, realWidth, size), yConv(505, realHeight, size)),
      width: xConv(78.77, realWidth, size),
      height: yConv(57.42, realHeight, size),
    );

    final armBottomSidePaint = Paint()
          ..shader = const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: AppColors.armsBottomBrown,
          ).createShader(armBottomSide)
        //
        ;

    final armBottomSidePath = Path()
          ..moveTo(
              xConv(271.27, realWidth, size), yConv(474.45, realHeight, size))
          ..lineTo(
              xConv(312.34, realWidth, size), yConv(519.27, realHeight, size))
          ..lineTo(
              xConv(313.6, realWidth, size), yConv(532.2, realHeight, size))
          ..lineTo(
              xConv(352.16, realWidth, size), yConv(532.95, realHeight, size))
          ..lineTo(xConv(305, realWidth, size), yConv(475.3, realHeight, size))
          ..close()
        //
        ;

    drawPathWithStroke(canvas, armBottomSidePath, armBottomSidePaint);

    /////////////////////////////////////// [Arm bottom side] ///////////////////////////////////////
    ///
    /////////////////////////////////////// [Arm top hand support] ///////////////////////////////////////

    final topHandSupportPaint = Paint()..color = AppColors.armsTopHandSupport;

    final topHandSupportPath = Path()
          ..moveTo(
              xConv(303.63, realWidth, size), yConv(436.94, realHeight, size))
          ..lineTo(
              xConv(305.17, realWidth, size), yConv(476.25, realHeight, size))
          ..lineTo(
              xConv(271.67, realWidth, size), yConv(475.42, realHeight, size))
          ..lineTo(xConv(282, realWidth, size), yConv(444.13, realHeight, size))
          ..lineTo(xConv(300.7, realWidth, size), yConv(441, realHeight, size))
          ..close()
        //
        ;

    drawPathWithStroke(canvas, topHandSupportPath, topHandSupportPaint);

    /////////////////////////////////////// [Arm top hand support] ///////////////////////////////////////
    ///
    /////////////////////////////////////// [Arm top elipse] ///////////////////////////////////////

    _drawTopElipse(x: 288.85, y: 464);

    /////////////////////////////////////// [Arm top elipse] ///////////////////////////////////////
    ///
    /////////////////////////////////////// [Arm bottom elipse] ///////////////////////////////////////

    _drawBottomElipse(x: 332.83, y: 532);

    /////////////////////////////////////// [Arm bottom elipse] ///////////////////////////////////////
    ///
    /////////////////////////////////////// [Arm side] ///////////////////////////////////////

    final armSideRight = Rect.fromCenter(
        center: Offset(
            xConv(326.85, realWidth, size), yConv(486, realHeight, size)),
        width: xConv(48, realWidth, size),
        height: yConv(94, realHeight, size));

    final armSidePaint = Paint()
          ..shader = const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: AppColors.armsSideOrange,
          ).createShader(armSideRight)
        //
        ;

    final armSideRightPath = Path()
          ..moveTo(xConv(302.55, realWidth, size), yConv(437, realHeight, size))
          ..lineTo(xConv(304.28, realWidth, size), yConv(476, realHeight, size))
          ..lineTo(
              xConv(351.64, realWidth, size), yConv(533.78, realHeight, size))
          ..lineTo(
              xConv(350.6, realWidth, size), yConv(493.37, realHeight, size))
          ..close()
        //
        ;
    drawPathWithStroke(canvas, armSideRightPath, armSidePaint);

    /////////////////////////////////////// [Arm side] ///////////////////////////////////////
    ///
    ////////////////////////////////////////// [Hand small elipse] ///////////////////////////////////////

    _drawHandSmallElipse(288, 462, rotationDegrees: 151);

    /////////////////////////////////////// [Hand small elipse] ///////////////////////////////////////
  }

  _draw() {
    _leftArms();

    _rightArms();
  }
}
