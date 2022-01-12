import 'package:flutter/material.dart';
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
              xConv(148.74, realWidth, size), yConv(565.67, realHeight, size))
          ..lineTo(
              xConv(144.5, realWidth, size), yConv(565.67, realHeight, size))
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
  }
}
