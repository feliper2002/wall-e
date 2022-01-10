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

    final eyeLeftPos = Offset(size.width * .378, size.height * .4);

    final eyeBasePaint = Paint()
          ..color = AppColors.eyeBase
          ..style = PaintingStyle.fill
        //
        ;

    Path eyeLeftPath = Path()
          ..moveTo(size.width * .42, size.height * .326)
          ..quadraticBezierTo(size.width * .354, size.height * .35,
              size.width * .266, size.height * .376)
          ..quadraticBezierTo(size.width * .2, size.height * .472,
              size.width * .285, size.height * .481)
          ..quadraticBezierTo(size.width * .328, size.height * .494,
              size.width * .397, size.height * .4737)
          ..quadraticBezierTo(size.width * .47, size.height * .418,
              size.width * .424, size.height * .328)
        //
        ;

    eyeLeftPath = eyeLeftPath.transform(rotatePath(eyeLeftPos, -30));

    drawPathWithStroke(canvas, eyeLeftPath, eyeBasePaint);
    //////////////////// [EYE] ////////////////////
    ///
    //////////////////// [HEAD] ////////////////////

    //////////////////// [HEAD] ////////////////////
    ///
    //////////////////// [ARMS] ////////////////////

    //////////////////// [ARMS] ////////////////////
    ///
    //////////////////// [BODY] ////////////////////

    //////////////////// [BODY] ////////////////////
    ///
    //////////////////// [WHEELS] ////////////////////

    //////////////////// [WHEELS] ////////////////////
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return this != oldDelegate;
  }
}
