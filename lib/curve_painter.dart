import 'dart:ui';

import 'package:flutter/material.dart';

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    _paintFirstPattern(canvas, size);
//    _paintSecondPattern(canvas, size);
//    _paintThirdPattern(canvas, size);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

  _paintThirdPattern(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Color(0xFFFF215D);
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 0.58);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.58, size.width, size.height * 0.45);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  _paintSecondPattern(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Color(0xFFFF215D);
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 0.55);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.6, size.width, size.height * 0.58);
//    path.quadraticBezierTo(size.width * 0.75, size.height * 0.9584,
//        size.width * 1.0, size.height * 0.9167);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  _paintFirstPattern(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Color(0xFFFF215D);
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 0.6);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.5, size.width, size.height * 0.55);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }
}
