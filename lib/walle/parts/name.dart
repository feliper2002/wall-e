import 'package:flutter/material.dart';
import 'package:walle_fteam/utils/colors.dart';
import 'package:walle_fteam/walle/global_functions.dart';

class Name {
  final Canvas canvas;
  final Size size;
  final double realHeight;
  final double realWidth;

  Name(this.canvas, this.size, this.realHeight, this.realWidth) {
    _draw();
  }

  _draw() {
    final lettersPaint = Paint()..color = Colors.black;

    ////////////////////// [W] //////////////////////

    final wPath = Path()
          ..moveTo(
              xConv(144.5, realWidth, size), yConv(555.67, realHeight, size))
          ..lineTo(
              xConv(144.5, realWidth, size), yConv(568.8, realHeight, size))
          ..lineTo(
              xConv(162.9, realWidth, size), yConv(568.8, realHeight, size))
          ..quadraticBezierTo(
              xConv(166.9, realWidth, size),
              yConv(568, realHeight, size),
              xConv(167.24, realWidth, size),
              yConv(565, realHeight, size))
          ..lineTo(
              xConv(167.2, realWidth, size), yConv(555.67, realHeight, size))
          ..lineTo(
              xConv(162.96, realWidth, size), yConv(555.67, realHeight, size))
          ..lineTo(
              xConv(162.96, realWidth, size), yConv(565.75, realHeight, size))
          ..lineTo(xConv(158, realWidth, size), yConv(565.75, realHeight, size))
          ..lineTo(xConv(158, realWidth, size), yConv(555.67, realHeight, size))
          ..lineTo(
              xConv(153.7, realWidth, size), yConv(555.67, realHeight, size))
          ..lineTo(
              xConv(153.7, realWidth, size), yConv(565.75, realHeight, size))
          ..lineTo(
              xConv(148.74, realWidth, size), yConv(565.75, realHeight, size))
          ..lineTo(
              xConv(148.74, realWidth, size), yConv(555.67, realHeight, size))
        //
        ;

    canvas.drawPath(wPath, lettersPaint);

    ////////////////////// [W] //////////////////////

    ////////////////////// [DOT] //////////////////////

    canvas.drawCircle(
        Offset(xConv(244.26, realWidth, size), yConv(562.22, realHeight, size)),
        xConv(2.5, realWidth, size),
        lettersPaint);

    ////////////////////// [DOT] //////////////////////

    ////////////////////// [E] //////////////////////

    final letterEPainting = Paint()..color = Colors.white;

    final ePath = Path()
          ..moveTo(
              xConv(271.4, realWidth, size), yConv(555.67, realHeight, size))
          ..lineTo(
              xConv(257.29, realWidth, size), yConv(555.67, realHeight, size))
          ..quadraticBezierTo(
              xConv(254.31, realWidth, size),
              yConv(556.58, realHeight, size),
              xConv(253.59, realWidth, size),
              yConv(559.84, realHeight, size))
          ..lineTo(
              xConv(253.59, realWidth, size), yConv(564.74, realHeight, size))
          ..quadraticBezierTo(
              xConv(254.83, realWidth, size),
              yConv(568.18, realHeight, size),
              xConv(257.39, realWidth, size),
              yConv(568.8, realHeight, size))
          ..lineTo(
              xConv(271.45, realWidth, size), yConv(568.8, realHeight, size))
          ..lineTo(
              xConv(271.45, realWidth, size), yConv(566.32, realHeight, size))
          ..lineTo(xConv(258, realWidth, size), yConv(566.32, realHeight, size))
          ..lineTo(xConv(258, realWidth, size), yConv(563.56, realHeight, size))
          ..lineTo(
              xConv(270.1, realWidth, size), yConv(563.56, realHeight, size))
          ..lineTo(xConv(270.1, realWidth, size), yConv(561, realHeight, size))
          ..lineTo(xConv(258, realWidth, size), yConv(561, realHeight, size))
          ..lineTo(xConv(258, realWidth, size), yConv(558.22, realHeight, size))
          ..lineTo(
              xConv(271.45, realWidth, size), yConv(558.22, realHeight, size))
          ..lineTo(
              xConv(271.45, realWidth, size), yConv(555.7, realHeight, size))
        //
        ;

    canvas.drawCircle(
        Offset(xConv(263, realWidth, size), yConv(562.22, realHeight, size)),
        xConv(14, realWidth, size),
        Paint()..color = AppColors.redCircleE);

    canvas.drawPath(ePath, letterEPainting);
    ////////////////////// [E] //////////////////////
  }
}
