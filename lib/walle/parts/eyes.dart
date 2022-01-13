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
    final eyeLeftPos = Offset(size.width * .378, size.height * .4);

    final eyeBasePaint = Paint()
          ..color = AppColors.eyeBase
          ..style = PaintingStyle.fill
        //
        ;

    // drawPathWithStroke(canvas, eyeLeftPath, eyeBasePaint);
  }
}
