import 'package:flutter/material.dart';
import 'package:walle_fteam/utils/colors.dart';
import 'package:walle_fteam/walle/parts/body.dart';
import 'package:walle_fteam/walle/parts/eyes.dart';
import 'package:walle_fteam/walle/parts/name.dart';
import 'package:walle_fteam/walle/parts/wheels.dart';

class Walle extends StatelessWidget {
  final double height;
  final double width;
  const Walle({
    Key? key,
    this.height = 664,
    this.width = 372,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      body: CustomPaint(
        painter: WallePaint(height, width),
        child: Container(
          height: height,
          width: width,
          alignment: Alignment.bottomCenter,
        ),
      ),
    );
  }
}

class WallePaint extends CustomPainter {
  final double realHeight;
  final double realWidth;

  WallePaint(this.realHeight, this.realWidth);

  @override
  void paint(Canvas canvas, Size size) {
    Eyes(canvas, size);
    Wheels(canvas, size, realHeight, realWidth);
    Body(canvas, size, realHeight, realWidth);
    Name(canvas, size, realHeight, realWidth);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return this != oldDelegate;
  }
}
