import 'package:flutter/material.dart';
import 'package:walle_fteam/walle/parts/wheels/left_wheel.dart';
import 'package:walle_fteam/walle/parts/wheels/right_wheel.dart';

class Wheels {
  final Canvas canvas;
  final Size size;
  final double realHeight;
  final double realWidth;

  Wheels(this.canvas, this.size, this.realHeight, this.realWidth) {
    _draw();
  }

  _drawLeftWheel() => LeftWheel(canvas, size, realHeight, realWidth);
  _drawRightWheel() => RightWheel(canvas, size, realHeight, realWidth);

  _drawBottomWheel(Offset position, {bool small = true}) {
    final wheelsBottomPaint = Paint()..color = Colors.black;
    final wheelBottomHeight = size.height * .0032;

    if (small) {
      final smallWheelRect = Rect.fromCenter(
          center: position,
          width: size.width * .0336,
          height: wheelBottomHeight);
      canvas.drawRect(smallWheelRect, wheelsBottomPaint);
    } else {
      final bigWheelRect = Rect.fromCenter(
          center: position,
          width: size.width * .0487,
          height: wheelBottomHeight);
      canvas.drawRect(bigWheelRect, wheelsBottomPaint);
    }
  }

  void _draw() {
    _drawLeftWheel();
    _drawRightWheel();

    final wheelBottomTopDistancePos = size.height * .993;

    for (var i = .24; i <= .752; i += .06) {
      _drawBottomWheel(Offset(size.width * i, wheelBottomTopDistancePos));
      if (i == .42) {
        i += .13;
        _drawBottomWheel(Offset(size.width * i, wheelBottomTopDistancePos));
      }
      if (i == .3 || i == .36 || i == .61 || i == .67) {
        _drawBottomWheel(Offset(size.width * i, wheelBottomTopDistancePos),
            small: false);
      }
    }

    ////////////// {BOTTOM PART FOOT} //////////////
  }
}
