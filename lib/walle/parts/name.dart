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

    ////////////////////// [A] //////////////////////

    final aPath = Path()
          ..moveTo(
              xConv(174.1, realWidth, size), yConv(568.8, realHeight, size))
          ..lineTo(xConv(174.1, realWidth, size), yConv(560, realHeight, size))
          ..quadraticBezierTo(
              xConv(174.53, realWidth, size),
              yConv(556.7, realHeight, size),
              xConv(177.9, realWidth, size),
              yConv(555.7, realHeight, size))
          ..lineTo(
              xConv(188.41, realWidth, size), yConv(555.7, realHeight, size))
          ..quadraticBezierTo(
              xConv(192.9, realWidth, size),
              yConv(557, realHeight, size),
              xConv(192.64, realWidth, size),
              yConv(559.87, realHeight, size))
          ..lineTo(
              xConv(192.64, realWidth, size), yConv(568.8, realHeight, size))
          ..lineTo(
              xConv(188.34, realWidth, size), yConv(568.8, realHeight, size))
          ..lineTo(
              xConv(188.34, realWidth, size), yConv(564.84, realHeight, size))
          ..lineTo(
              xConv(178.42, realWidth, size), yConv(564.84, realHeight, size))
          ..lineTo(
              xConv(178.42, realWidth, size), yConv(568.8, realHeight, size))
        //
        ;

    canvas.drawPath(aPath, lettersPaint);
    canvas.drawRect(
        Rect.fromCenter(
            center: Offset(
                xConv(183.7, realWidth, size), yConv(561, realHeight, size)),
            width: xConv(10, realWidth, size),
            height: yConv(3, realHeight, size)),
        Paint()..color = AppColors.bodyGradient[2]);

    ////////////////////// [A] //////////////////////
    ///
    ////////////////////// [L - 1] //////////////////////

    final lPath = Path()
          ..moveTo(
              xConv(199.6, realWidth, size), yConv(555.7, realHeight, size))
          ..lineTo(
              xConv(199.6, realWidth, size), yConv(568.74, realHeight, size))
          ..lineTo(
              xConv(216.13, realWidth, size), yConv(568.74, realHeight, size))
          ..lineTo(
              xConv(216.13, realWidth, size), yConv(566.16, realHeight, size))
          ..lineTo(
              xConv(203.77, realWidth, size), yConv(566.16, realHeight, size))
          ..lineTo(
              xConv(203.77, realWidth, size), yConv(555.7, realHeight, size))
        //
        ;

    canvas.drawPath(lPath, lettersPaint);

    ////////////////////// [L - 1] //////////////////////

    ////////////////////// [L - 2] //////////////////////

    final l2Path = Path()
          ..moveTo(
              xConv(199.6, realWidth, size), yConv(555.7, realHeight, size))
          ..lineTo(
              xConv(221.5, realWidth, size), yConv(555.7, realHeight, size))
          ..lineTo(
              xConv(221.5, realWidth, size), yConv(568.8, realHeight, size))
          ..lineTo(
              xConv(238.15, realWidth, size), yConv(568.8, realHeight, size))
          ..lineTo(
              xConv(238.15, realWidth, size), yConv(566.2, realHeight, size))
          ..lineTo(
              xConv(225.8, realWidth, size), yConv(566.2, realHeight, size))
          ..lineTo(
              xConv(225.8, realWidth, size), yConv(555.8, realHeight, size))
        //
        ;

    canvas.drawPath(l2Path, lettersPaint);

    ////////////////////// [L - 2] //////////////////////

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

    // final dimensoes = Offset(size.width * .25, size.height * .092);
    // final centroRoda = Offset(size.width * .34, size.height * .96);

    // final roda = Rect.fromCenter(
    //     center: centroRoda, width: dimensoes.dx, height: dimensoes.dy);

    // canvas.drawRect(roda, Paint()..color = Colors.red);
  }
}
