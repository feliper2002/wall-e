import 'package:flutter/material.dart';
import 'package:walle_fteam/utils/colors.dart';
import 'package:walle_fteam/walle/global_functions.dart';

class Pupils {
  final Canvas canvas;
  final Offset pupilsCenter;

  Pupils(this.canvas, {this.pupilsCenter = Offset.zero}) {
    _draw();
  }

  _draw() {
    /////////////// {INDIDE PUPIL - Elipse 21}
    final elipse21 = Rect.fromCircle(center: pupilsCenter, radius: 28);
    drawCircleWithStroke(
        canvas,
        elipse21,
        Paint()
          ..shader = const RadialGradient(colors: AppColors.pupilBase4Radial)
              .createShader(elipse21),
        radius: 28,
        center: pupilsCenter);

    /////////////// {INDIDE PUPIL - Elipse 31}
    final elipse31 = Rect.fromCircle(center: pupilsCenter, radius: 25);
    drawCircleWithStroke(
        canvas,
        elipse31,
        Paint()
          ..shader = const RadialGradient(colors: AppColors.pupilBase5Radial)
              .createShader(elipse31),
        radius: 25,
        center: pupilsCenter);

    /////////////// {INDIDE PUPIL - Elipse 22}
    final elipse22 = Rect.fromCircle(center: pupilsCenter, radius: 21);
    drawCircleWithStroke(
        canvas,
        elipse22,
        Paint()
          ..shader = const RadialGradient(colors: AppColors.pupilBase3Radial)
              .createShader(elipse22),
        radius: 21,
        center: pupilsCenter);

    /////////////// {INDIDE PUPIL - Elipse 23}
    final elipse23 = Rect.fromCircle(center: pupilsCenter, radius: 14);
    drawCircleWithStroke(
        canvas,
        elipse23,
        Paint()
          ..shader = const RadialGradient(colors: AppColors.pupilBase4Radial)
              .createShader(elipse23),
        radius: 14,
        center: pupilsCenter);

    /////////////// {INDIDE PUPIL - Elipse 24}
    canvas.drawCircle(pupilsCenter, 10, Paint()..color = Colors.black);
  }
}
