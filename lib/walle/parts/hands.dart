import 'package:flutter/material.dart';
import 'package:walle_fteam/utils/colors.dart';
import 'package:walle_fteam/walle/global_functions.dart';

class Hands {
  final Canvas canvas;
  final Size size;
  final double realHeight;
  final double realWidth;

  Hands(this.canvas, this.size, this.realHeight, this.realWidth) {
    _draw();
  }

  final handsPaint = Paint()..color = AppColors.handColor;

  _drawFinger(
    double x,
    double y, {
    double height = 33,
    double width = 39,
    double rotationDegreess = 30,
    Radius topLeft = const Radius.circular(0),
    Radius topRight = const Radius.circular(53),
    Radius bottomLeft = const Radius.circular(0),
    Radius bottomRight = const Radius.circular(53),
  }) {
    final finger = Rect.fromCenter(
      center: Offset(xConv(x, realWidth, size), yConv(y, realHeight, size)),
      width: xConv(width, realWidth, size),
      height: yConv(height, realHeight, size),
    );

    final fingerRadius = RRect.fromRectAndCorners(finger,
        topLeft: topLeft,
        topRight: topRight,
        bottomLeft: bottomLeft,
        bottomRight: bottomRight);

    Path fingerPath = Path()..addRRect(fingerRadius);

    fingerPath =
        fingerPath.transform(rotatePath(finger.center, rotationDegreess));

    drawPathWithStroke(canvas, fingerPath, handsPaint);
  }

  _leftHand() {
    ////////////////////////////////// [Vector 16] //////////////////////////////////

    final vector16 = Path()
          ..moveTo(xConv(107.9, realWidth, size), yConv(428, realHeight, size))
          ..lineTo(
              xConv(111.13, realWidth, size), yConv(436.73, realHeight, size))
          ..lineTo(xConv(132, realWidth, size), yConv(440.3, realHeight, size))
          ..lineTo(
              xConv(137.95, realWidth, size), yConv(443.24, realHeight, size))
          ..lineTo(
              xConv(142.28, realWidth, size), yConv(443.57, realHeight, size))
          ..lineTo(
              xConv(172.49, realWidth, size), yConv(464.26, realHeight, size))
          ..lineTo(xConv(176, realWidth, size), yConv(464.51, realHeight, size))
          ..lineTo(
              xConv(141.42, realWidth, size), yConv(438.37, realHeight, size))
          ..close()
        //
        ;

    drawPathWithStroke(canvas, vector16, handsPaint);

    ////////////////////////////////// [Vector 16] //////////////////////////////////
    ////////////////////////////////// [Vector 19] //////////////////////////////////

    final vector19 = Path()
          ..moveTo(
              xConv(107.74, realWidth, size), yConv(397.9, realHeight, size))
          ..lineTo(
              xConv(153.64, realWidth, size), yConv(411.63, realHeight, size))
          ..lineTo(
              xConv(145.13, realWidth, size), yConv(425.72, realHeight, size))
          ..lineTo(
              xConv(142.93, realWidth, size), yConv(424.62, realHeight, size))
          ..lineTo(
              xConv(135.1, realWidth, size), yConv(437.5, realHeight, size))
          ..lineTo(xConv(91.75, realWidth, size), yConv(424, realHeight, size))
          ..close()
        //
        ;

    drawPathWithStroke(canvas, vector19, handsPaint);
    ////////////////////////////////// [Vector 19] //////////////////////////////////
    ///
    ////////////////////////////////// [Vector 14] //////////////////////////////////

    final vector14 = Path()
          ..moveTo(
              xConv(156.16, realWidth, size), yConv(412.78, realHeight, size))
          ..lineTo(
              xConv(140.5, realWidth, size), yConv(438.95, realHeight, size))
          ..lineTo(
              xConv(174.55, realWidth, size), yConv(464.62, realHeight, size))
          ..lineTo(
              xConv(189.84, realWidth, size), yConv(438.73, realHeight, size))
          ..close()
        //
        ;

    drawPathWithStroke(canvas, vector14, handsPaint);

    ////////////////////////////////// [Vector 14] //////////////////////////////////
    ///
    ////////////////////////////////// [Vector 15] //////////////////////////////////

    final vector15 = Path()
          ..moveTo(
              xConv(152.72, realWidth, size), yConv(412.78, realHeight, size))
          ..lineTo(
              xConv(144.77, realWidth, size), yConv(424.36, realHeight, size))
          ..lineTo(
              xConv(142.55, realWidth, size), yConv(423.3, realHeight, size))
          ..lineTo(xConv(134, realWidth, size), yConv(437.11, realHeight, size))
          ..lineTo(
              xConv(141.34, realWidth, size), yConv(439.42, realHeight, size))
          ..close()
        //
        ;

    drawPathWithStroke(canvas, vector15, handsPaint);

    ////////////////////////////////// [Vector 15] //////////////////////////////////
    ///
    ////////////////////////////////// [Vector 17] //////////////////////////////////

    final vector17 = Path()
          ..moveTo(
              xConv(92.19, realWidth, size), yConv(423.1, realHeight, size))
          ..lineTo(
              xConv(87.4, realWidth, size), yConv(431.83, realHeight, size))
          ..lineTo(
              xConv(104.26, realWidth, size), yConv(437.47, realHeight, size))
          ..lineTo(
              xConv(109.34, realWidth, size), yConv(428.47, realHeight, size))
          ..close()
        //
        ;

    drawPathWithStroke(canvas, vector17, handsPaint);

    ////////////////////////////////// [Vector 17] //////////////////////////////////
    ///
    ////////////////////////////////// [Vector 18] //////////////////////////////////

    final vector18 = Path()
          ..moveTo(
              xConv(108.68, realWidth, size), yConv(427.54, realHeight, size))
          ..lineTo(
              xConv(103.3, realWidth, size), yConv(437.15, realHeight, size))
          ..lineTo(
              xConv(110.7, realWidth, size), yConv(439.7, realHeight, size))
          ..lineTo(
              xConv(112.1, realWidth, size), yConv(436.3, realHeight, size))
          ..close()
        //
        ;

    drawPathWithStroke(canvas, vector18, handsPaint);

    ////////////////////////////////// [Vector 18] //////////////////////////////////
    ///
    ////////////////////////////////// [Vector 20] //////////////////////////////////

    final vector20 = Path()
          ..moveTo(
              xConv(87.9, realWidth, size), yConv(429.93, realHeight, size))
          ..lineTo(
              xConv(132.75, realWidth, size), yConv(444.96, realHeight, size))
          ..lineTo(
              xConv(124.45, realWidth, size), yConv(458.2, realHeight, size))
          ..lineTo(xConv(125.83, realWidth, size), yConv(460, realHeight, size))
          ..lineTo(
              xConv(117.67, realWidth, size), yConv(475.06, realHeight, size))
          ..lineTo(xConv(70, realWidth, size), yConv(461.47, realHeight, size))
          ..close()
        //
        ;

    drawPathWithStroke(canvas, vector20, handsPaint);

    ////////////////////////////////// [Vector 20] //////////////////////////////////
    ///
    ////////////////////////////////// [Rounded finger] //////////////////////////////////

    _drawFinger(146.8, 473,
        topRight: Radius.circular(xConv(53, realWidth, size)),
        bottomRight: Radius.circular(xConv(53, realWidth, size)));

    ////////////////////////////////// [Rounded finger] //////////////////////////////////
    ///
    ////////////////////////////////// [Vector 12] //////////////////////////////////

    final vector12 = Path()
          ..moveTo(
              xConv(131.84, realWidth, size), yConv(444.55, realHeight, size))
          ..lineTo(
              xConv(124.45, realWidth, size), yConv(458.2, realHeight, size))
          ..lineTo(
              xConv(125.83, realWidth, size), yConv(459.9, realHeight, size))
          ..lineTo(
              xConv(116.83, realWidth, size), yConv(474.59, realHeight, size))
          ..lineTo(
              xConv(120.12, realWidth, size), yConv(478.43, realHeight, size))
          ..lineTo(
              xConv(138.14, realWidth, size), yConv(448.41, realHeight, size))
          ..close()
        //
        ;

    drawPathWithStroke(canvas, vector12, handsPaint);

    ////////////////////////////////// [Vector 12] //////////////////////////////////
    ///
    ////////////////////////////////// [Vector 13] //////////////////////////////////

    final vector13 = Path()
          ..moveTo(
              xConv(69.87, realWidth, size), yConv(460.42, realHeight, size))
          ..lineTo(
              xConv(74.1, realWidth, size), yConv(470.82, realHeight, size))
          ..lineTo(
              xConv(95.5, realWidth, size), yConv(477.43, realHeight, size))
          ..lineTo(
              xConv(103.66, realWidth, size), yConv(476.1, realHeight, size))
          ..lineTo(
              xConv(103.66, realWidth, size), yConv(476.1, realHeight, size))
          ..close()
        //
        ;

    drawPathWithStroke(canvas, vector13, handsPaint);

    ////////////////////////////////// [Vector 13] //////////////////////////////////
    ///
  }

  _draw() {
    _leftHand();
  }
}
