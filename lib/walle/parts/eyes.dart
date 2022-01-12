import 'package:flutter/cupertino.dart';
import 'package:walle_fteam/utils/colors.dart';

import '../global_functions.dart';

class Eyes {
  final Canvas canvas;
  final Size size;

  Eyes(this.canvas, this.size) {
    _draw();
  }

  _draw() {
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
  }
}
