import 'dart:math';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:walle_fteam/utils/colors.dart';

class Walle extends StatelessWidget {
  final double height;
  final double width;
  const Walle({
    Key? key,
    this.height = 375,
    this.width = 667,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomPaint(
        painter: WallePaint(),
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
  double rotateRadians(double degrees) {
    final radians = degrees * (pi / 180);
    return radians;
  }

  Float64List rotatePath(Offset origin, double degrees) {
    Matrix4 matrix = Matrix4.identity();

    var m = matrix
      ..clone()
      ..translate(origin.dx, origin.dy)
      ..multiply(Matrix4.rotationZ(rotateRadians(degrees)))
      ..translate(-origin.dx, -origin.dy);

    return m.storage;
  }

  drawPathWithStroke(Canvas canvas, Path path, Paint basePaint,
      {double strokeWidth = 2, Color strokeColor = Colors.black}) {
    final drawSTROKE = Paint()
          ..color = strokeColor
          ..style = PaintingStyle.stroke
          ..strokeWidth = strokeWidth
        //
        ;
    canvas.drawPath(path, drawSTROKE);
    canvas.drawPath(path, basePaint);
  }

  @override
  void paint(Canvas canvas, Size size) {
    //////////////////// [EYE] ////////////////////

    // final eyeDimensions = Offset(size.width * .28, size.height * .12);

    final eyeBasePaint = Paint()
          ..color = AppColors.eyeBase
          ..style = PaintingStyle.fill
        //
        ;

    Path eyeLeftPath = Path()
          ..moveTo(size.width * .48, size.height * .36)
          ..quadraticBezierTo(size.width * .258, size.height * .36,
              size.width * .264, size.height * .364)
          ..quadraticBezierTo(size.width * .21, size.height * .43,
              size.width * .3, size.height * .47)
          ..quadraticBezierTo(size.width * .323, size.height * .49,
              size.width * .37, size.height * .47)
          ..quadraticBezierTo(size.width * .42, size.height * .46,
              size.width * .47, size.height * .36)
        //
        ;

    drawPathWithStroke(canvas, eyeLeftPath, eyeBasePaint);
    //////////////////// [EYE] ////////////////////
    ///
    //////////////////// [HEAD] ////////////////////

    //////////////////// [HEAD] ////////////////////
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return this != oldDelegate;
  }
}
