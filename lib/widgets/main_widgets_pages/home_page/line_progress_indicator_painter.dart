import 'package:flutter/material.dart';
import 'package:language_learning_game/constants/colors.dart';

class LineProgress extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    drawLineContainer(canvas, size);
  }

  // void draw rect_containers
  void drawLineContainer(Canvas canvas, Size size) {
    var i = 1;
    var c = 0.1;

    final paintWhite = Paint()
      ..color = Colors.white
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 3;

    final paintBlue = Paint()
      ..color = primaryColor
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 0.9;
    while (i <= 40) {
      canvas.drawLine(
        Offset(size.width * 1 / 2, size.height * c),
        Offset(size.width * 1 / 2, size.height * (c + 0.01)),
        paintWhite,
      );
      c = c + 0.0195;
      i++;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
