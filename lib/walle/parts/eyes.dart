import 'package:flutter/cupertino.dart';
import 'package:walle_fteam/utils/colors.dart';

import '../global_functions.dart';

class Eyes {
  final Canvas canvas;
  final Size size;
  final double realHeight;
  final double realWidth;

  Eyes(this.canvas, this.size, this.realHeight, this.realWidth) {
    _draw();
  }

  _draw() {
    final eyeLeft = Rect.fromCenter(
      center: Offset(
          xConv(132.9, realWidth, size), yConv(274.95, realHeight, size)),
      width: xConv(107.4, realWidth, size),
      height: yConv(81.7, realHeight, size),
    );

    final eyeBasePaint = Paint()
          ..color = AppColors.eyeBase
          ..style = PaintingStyle.fill
        //
        ;

    Path eyeLeftPath = Path()
          ..moveTo(
              xConv(179.3, realWidth, size), yConv(235.53, realHeight, size))
          ..lineTo(
              xConv(122.46, realWidth, size), yConv(235.53, realHeight, size))
          ..quadraticBezierTo(
            xConv(68.9, realWidth, size),
            yConv(291.96, realHeight, size),
            xConv(122.46, realWidth, size),
            yConv(316.85, realHeight, size),
          )
          ..quadraticBezierTo(
            xConv(171.9, realWidth, size),
            yConv(294.96, realHeight, size),
            xConv(185.98, realWidth, size),
            yConv(242.34, realHeight, size),
          )
          ..quadraticBezierTo(
            xConv(185.3, realWidth, size),
            yConv(237.96, realHeight, size),
            xConv(179.47, realWidth, size),
            yConv(235.54, realHeight, size),
          )
        //
        ;

    eyeLeftPath = eyeLeftPath.transform(rotatePath(eyeLeft.center, -15));

    // drawPathWithStroke(canvas, eyeLeftPath, eyeBasePaint);
  }
}
