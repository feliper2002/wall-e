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

  Float64List rotatePath(Offset position, double degrees) {
    Matrix4 matrix = Matrix4.identity();

    var m = matrix
      ..clone()
      ..translate(position.dx, position.dy)
      ..multiply(Matrix4.rotationZ(rotateRadians(degrees)))
      ..translate(-position.dx, -position.dy);

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

  drawBottomWheel(Canvas canvas, Size size, Offset position,
      {bool small = true}) {
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

    ////////////// {TOP BIG PART FOOT} //////////////

    final bigWheelPaint = Paint()..color = AppColors.eyeBase;
    final bigWheelDimensions = Offset(size.width * .2485, size.height * .0878);

    final leftBigWheelCenterPos = Offset(size.width * .338, size.height * .946);
    final rightBigWheelCenterPos =
        Offset(size.width * .658, size.height * .946);

    final leftBigWheelRect = Rect.fromCenter(
        center: leftBigWheelCenterPos,
        width: bigWheelDimensions.dx,
        height: bigWheelDimensions.dy);

    final rightBigWheelRect = Rect.fromCenter(
        center: rightBigWheelCenterPos,
        width: bigWheelDimensions.dx,
        height: bigWheelDimensions.dy);

    canvas.drawRect(leftBigWheelRect, bigWheelPaint);
    canvas.drawRect(rightBigWheelRect, bigWheelPaint);

    ////////////// {TOP BIG PART FOOT} //////////////

    ////////////// {BOTTOM PART FOOT} //////////////

    final wheelBottomTopDistancePos = size.height * .992;

    final wheelBottomCenterPositions = <Offset>[
      Offset(size.width * .24, wheelBottomTopDistancePos), // [1] bottom pos
      Offset(size.width * .304, wheelBottomTopDistancePos), // [2] bottom pos
      Offset(size.width * .37, wheelBottomTopDistancePos), // [3] bottom pos
      Offset(size.width * .432, wheelBottomTopDistancePos), // [4] bottom pos
      //////////////////////////////////////////////////////////////////
      Offset(size.width * .562, wheelBottomTopDistancePos), // [5] bottom pos
      Offset(size.width * .624, wheelBottomTopDistancePos), // [6] bottom pos
      Offset(size.width * .69, wheelBottomTopDistancePos), // [7] bottom pos
      Offset(size.width * .752, wheelBottomTopDistancePos), // [8] bottom pos
    ];

    drawBottomWheel(canvas, size, wheelBottomCenterPositions[0]);
    drawBottomWheel(canvas, size, wheelBottomCenterPositions[1], small: false);
    drawBottomWheel(canvas, size, wheelBottomCenterPositions[2], small: false);
    drawBottomWheel(canvas, size, wheelBottomCenterPositions[3]);

    drawBottomWheel(canvas, size, wheelBottomCenterPositions[4]);
    drawBottomWheel(canvas, size, wheelBottomCenterPositions[5], small: false);
    drawBottomWheel(canvas, size, wheelBottomCenterPositions[6], small: false);
    drawBottomWheel(canvas, size, wheelBottomCenterPositions[7]);

    ////////////// {BOTTOM PART FOOT} //////////////

    //////////////////// [WHEELS] ////////////////////
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return this != oldDelegate;
  }
}
