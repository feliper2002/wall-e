import 'package:flutter/cupertino.dart';
import 'package:walle_fteam/utils/colors.dart';
import 'package:walle_fteam/walle/global_functions.dart';

class Body {
  final Canvas canvas;
  final Size size;
  final double realHeight;
  final double realWidth;

  Body(this.canvas, this.size, this.realHeight, this.realWidth) {
    _draw();
  }

  _draw() {
    final chestRect = Rect.fromCenter(
        center:
            Offset(xConv(186, realWidth, size), yConv(493, realHeight, size)),
        width: xConv(237, realWidth, size),
        height: yConv(206.47, realHeight, size));

    final chestShadowRect = Rect.fromCenter(
        center:
            Offset(xConv(186, realWidth, size), yConv(588, realHeight, size)),
        width: xConv(214.34, realWidth, size),
        height: yConv(18, realHeight, size));

    final chestShadowBaseSolidRect = Rect.fromCenter(
        center:
            Offset(xConv(186, realWidth, size), yConv(599, realHeight, size)),
        width: xConv(214.34, realWidth, size),
        height: yConv(7, realHeight, size));

    final chestPaint = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: AppColors.bodyGradient,
      ).createShader(chestRect);

    final chestShadowPaint = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: AppColors.bigShadowGradient,
      ).createShader(chestShadowRect);

    final chestBaseSolidPaint = Paint()..color = AppColors.shadowBaseSolid;

    canvas.drawRect(chestRect, chestPaint);
    canvas.drawRect(chestShadowRect, chestShadowPaint);
    canvas.drawRect(chestShadowBaseSolidRect, chestBaseSolidPaint);

    /////////////////////////// [Reinforcement] ///////////////////////////

    final reinforcementPathLeft = Path()
          ..moveTo(xConv(67, realWidth, size), yConv(551, realHeight, size))
          ..lineTo(xConv(64, realWidth, size), yConv(586.7, realHeight, size))
          ..lineTo(xConv(76, realWidth, size), yConv(603.6, realHeight, size))
          ..lineTo(
              xConv(123.7, realWidth, size), yConv(603.6, realHeight, size))
          ..lineTo(xConv(128.3, realWidth, size), yConv(600, realHeight, size))
          ..lineTo(xConv(128.3, realWidth, size), yConv(595, realHeight, size))
          ..lineTo(xConv(86.8, realWidth, size), yConv(595, realHeight, size))
          ..lineTo(xConv(86.8, realWidth, size), yConv(551, realHeight, size))
        //
        ;

    final reinforcementPathRight = Path()
          ..moveTo(xConv(286, realWidth, size), yConv(551, realHeight, size))
          ..lineTo(xConv(286, realWidth, size), yConv(595.2, realHeight, size))
          ..lineTo(
              xConv(244.7, realWidth, size), yConv(595.2, realHeight, size))
          ..lineTo(xConv(244.7, realWidth, size), yConv(599, realHeight, size))
          ..lineTo(
              xConv(249.3, realWidth, size), yConv(603.86, realHeight, size))
          ..lineTo(xConv(297, realWidth, size), yConv(603.86, realHeight, size))
          ..lineTo(xConv(308.85, realWidth, size), yConv(587, realHeight, size))
          ..lineTo(
              xConv(306.3, realWidth, size), yConv(551.66, realHeight, size))
        //
        ;

    final reinforcementPaint = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: AppColors.reinforcementGradient,
      ).createShader(Rect.zero);

    canvas.drawPath(reinforcementPathLeft, reinforcementPaint);
    canvas.drawPath(reinforcementPathRight, reinforcementPaint);

    /////////////////////////// [Reinforcement] ///////////////////////////
  }
}
