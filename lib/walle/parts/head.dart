import 'package:flutter/material.dart';
import 'package:walle_fteam/walle/parts/eyes.dart';

class Head {
  final Canvas canvas;
  final Size size;
  final double realHeight;
  final double realWidth;

  Head(this.canvas, this.size, this.realHeight, this.realWidth) {
    _draw();
  }

  _drawEyes() {
    Eyes(canvas, size, realHeight, realWidth);
  }

  _draw() {
    _drawEyes();
  }
}
