import 'package:flutter/material.dart';
import 'package:language_learning_game/models/offsets.dart';

class CircleLinePainter extends CustomPainter {
  final List<OffSets> offSets;

  CircleLinePainter({required this.offSets});
  @override
  void paint(Canvas canvas, Size size) {
    //  loop over object
    if (offSets.isEmpty) {
      return null;
    } else {
      offSets.forEach((item) {
        if (item.from == item.to) {
          drawPointOnSameLine(canvas, size, item);
        } else {
          drawPointOnDifferentLine(canvas, size, item);
        }
      });
    }
  }

  void drawPointOnSameLine(Canvas canvas, Size size, OffSets item) {
    final circlePaint = Paint()
      ..color = Color(int.parse(item.color))
      ..strokeWidth = 10.0
      ..style = PaintingStyle.fill;
    canvas.drawCircle(
        Offset(size.width * (item.x1 - 0.02), size.height / item.y1),
        7,
        circlePaint);
    canvas.drawLine(
        Offset(size.width * item.x1, size.height / item.y1),
        Offset(size.width * (item.x2 + 0.007), size.height / item.y2),
        Paint()
          ..strokeWidth = 2
          ..color = Color(int.parse(item.color)));
    canvas.drawCircle(
        Offset(size.width * (item.x2 + 0.03), size.height / item.y2),
        7,
        circlePaint);
  }

  void drawPointOnDifferentLine(Canvas canvas, Size size, OffSets item) {
    var index = item.from.toString() + item.to.toString();
    switch (int.parse(index)) {
      case 01:
        {
          paintLines(canvas, size, item.color, 1 / 3.2, 7, 1 / 1.96, 5,
              1 / 1.93, 4, 1 / 1.9, 2.5, 1 / 1.44, 2.5);
        }
        break;
      case 02:
        {
          paintLines(canvas, size, item.color, 1 / 3.2, 7, 1 / 1.7, 12,
              1 / 1.64, 1.8, 1 / 1.64, 1.5, 1 / 1.42, 1.58);
        }
        break;
      case 03:
        {
          paintLines(canvas, size, item.color, 1 / 3.2, 7, 1 / 1.7, 12,
              1 / 1.54, 1.18, 1 / 1.54, 1.12, 2.09 / 3, 1.12);
        }
        break;
      case 10:
        {
          paintLines(canvas, size, item.color, 1 / 3.4, 2.5, 1 / 2.2, 2.5,
              1 / 2.2, 3.2, 1 / 2, 7, 1 / 1.4, 7);
        }
        break;
      case 12:
        {
          paintLines(canvas, size, item.color, 1 / 3.2, 2.8, 1 / 1.7, 2.6,
              1 / 1.64, 1.7, 1 / 1.64, 1.6, 1 / 1.44, 1.6);
        }
        break;
      case 13:
        {
          paintLines(canvas, size, item.color, 1 / 3.2, 2.8, 1 / 1.7, 2.6,
              1 / 1.64, 1.7, 1 / 1.64, 1.18, 1 / 1.44, 1.18);
        }
        break;
      case 20:
        {
          paintLines(canvas, size, item.color, 1 / 3.2, 1.6, 1 / 2.2, 1.6,
              1 / 2.2, 2, 1 / 2, 7, 1 / 1.44, 7);
        }
        break;
      case 21:
        {
          paintLines(canvas, size, item.color, 1 / 3.4, 1.6, 1 / 2.2, 1.6,
              1 / 2.2, 1.8, 1 / 2, 3, 1 / 1.4, 3);
        }
        break;
      case 23:
        {
          paintLines(canvas, size, item.color, 1 / 3.2, 1.65, 1 / 1.7, 1.63,
              1 / 1.7, 1.2, 1 / 1.7, 1.1, 1 / 1.44, 1.1);
        }
        break;
      case 30:
        {
          paintLines(canvas, size, item.color, 1 / 3.4, 1.1, 1 / 2.2, 1.1,
              1 / 2.2, 1.5, 1 / 2, 7, 1 / 1.4, 7);
        }
        break;
      case 31:
        {
          paintLines(canvas, size, item.color, 1 / 3.2, 1.1, 1 / 2.2, 1.1,
              1 / 2.2, 1.5, 1 / 2, 2.7, 1 / 1.44, 2.7);
        }
        break;
      case 32:
        {
          paintLines(canvas, size, item.color, 1 / 3.2, 1.1, 1 / 2.2, 1.1,
              1 / 2.2, 1.25, 1 / 2, 1.6, 1 / 1.44, 1.6);
        }
        break;
      default:
    }
  }

  void paintLines(
      Canvas canvas,
      Size size,
      String color,
      double mvx1,
      double mvy1,
      double fsx1,
      double fsy1,
      double fex1,
      double fey1,
      double ssx1,
      double ssy1,
      double sex1,
      double sey1) {
    final path = Path();
    final circlePaint = Paint()
      ..color = Color(int.parse(color))
      ..strokeWidth = 10.0
      ..style = PaintingStyle.fill;
    final linePaint = Paint()
      ..color = Color(int.parse(color))
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;
    canvas.drawCircle(
        Offset(size.width * mvx1, size.height / mvy1), 7, circlePaint);
    path.moveTo(size.width * mvx1, size.height / mvy1);
    var firstStart = Offset(size.width * (fsx1), size.height / fsy1);
    var firstEnd = Offset(size.width * (fex1), size.height / fey1);
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    var secondStart = Offset(size.width * (ssx1), size.height / ssy1);
    var secondEnd = Offset(size.width * (sex1), size.height / sey1);
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    canvas.drawPath(path, linePaint);
    canvas.drawCircle(
        Offset(size.width * (sex1), size.height / sey1), 7, circlePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
