import 'package:flutter/material.dart';

class Header extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xFFFF6347);
    canvas.drawCircle(Offset(size.width * 0.3333333, size.height * 0.4000000),
        size.width * 0.8333333, paint0Fill);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xFFFF6347);
    canvas.drawCircle(Offset(size.width * 1.3333333, size.height * 0.4000000),
        size.width * 0.8333333, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
