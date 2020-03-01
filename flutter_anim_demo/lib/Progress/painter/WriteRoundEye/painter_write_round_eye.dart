import 'dart:ui';

import 'package:flutter/material.dart';

import 'Gy2Wht.dart';
import 'GyWriteRoundEye.dart';
import 'WhtWriteRoundEye.dart';

class WriteRoundEyePainter extends CustomPainter {
  int progress;
  GyWriteRoundEye gyWriteRoundEye;
  WhtWriteRoundEye whtWriteRoundEye;
  Gy2Wht gy2wht;

  WriteRoundEyePainter(this.progress,
      {this.gyWriteRoundEye, this.whtWriteRoundEye, this.gy2wht});

  @override
  void paint(Canvas canvas, Size size) {
    if ((progress / 360).floor() == 0) {
      gyWriteRoundEye.drawPonit(canvas, size, progress % 360);
    } else if ((progress / 360).floor() == 1) {
      gy2wht.drawPonit(canvas, size, progress % 360);
    } else {
      whtWriteRoundEye.drawPonit(canvas, size, progress % 360);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
