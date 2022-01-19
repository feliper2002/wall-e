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
  }

  _draw() {
    _leftHand();
  }
}
