import 'package:flutter/material.dart';
import 'package:language_learning_game/models/offsets.dart';

class LineMatching extends CustomPainter {
  final List<OffSets> offSets;

  LineMatching({required this.offSets});
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();

    // / Method to convert degree to radians

    //    starting point if (start = 4,end =3)

    if (offSets.isEmpty) {
      return null;
    } else {
      for (var item in offSets) {
        if (item.to == item.from) {
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
        } else {
          final circlePaint = Paint()
            ..color = Color(int.parse(item.color))
            ..strokeWidth = 10.0
            ..style = PaintingStyle.fill;
          final linePaint = Paint()
            ..color = Color(int.parse(item.color))
            ..strokeWidth = 2
            ..style = PaintingStyle.stroke;

          if (item.from == 0 && item.to == 1) {
            canvas.drawCircle(Offset(size.width * (1 / 3.2), size.height / 7),
                7, circlePaint);
            path.moveTo(size.width * (1 / 3.2), size.height / 7);
            var firstStart = Offset(size.width * (1 / 1.7), size.height / 6);
            var firstEnd = Offset(size.width * (1 / 1.64), size.height / 2.7);
            path.quadraticBezierTo(
                firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
            var secondStart =
                Offset(size.width * (1 / 1.64), size.height / 2.5);
            var secondEnd = Offset(size.width * (1 / 1.44), size.height / 2.5);
            path.quadraticBezierTo(
                secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
            canvas.drawPath(path, linePaint);
          } else if (item.from == 0 && item.to == 2) {
            canvas.drawCircle(Offset(size.width * (1 / 3.2), size.height / 7),
                7, circlePaint);
            path.moveTo(size.width * (1 / 3.2), size.height / 7);
            var firstStart = Offset(size.width * (1 / 1.7), size.height / 12);
            var firstEnd = Offset(size.width * (1 / 1.84), size.height / 1.8);
            path.quadraticBezierTo(
                firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
            var secondStart =
                Offset(size.width * (1 / 1.84), size.height / 1.4);
            var secondEnd = Offset(size.width * (1 / 1.24), size.height / 1.58);
            path.quadraticBezierTo(
                secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

            // path.lineTo(size.width * (2.09 / 3), size.height / 1.18);
            canvas.drawPath(path, linePaint);
            canvas.drawCircle(
                Offset(size.width * (1 / 1.44), size.height / 1.52),
                7,
                circlePaint);
          } else if (item.from == 0 && item.to == 3) {
            canvas.drawCircle(Offset(size.width * (1 / 3.2), size.height / 7),
                7, circlePaint);
            path.moveTo(size.width * (1 / 3.2), size.height / 7);
            var firstStart = Offset(size.width * (1 / 1.7), size.height / 12);
            var firstEnd = Offset(size.width * (1 / 1.54), size.height / 1.18);
            path.quadraticBezierTo(
                firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
            var secondStart =
                Offset(size.width * (1 / 1.54), size.height / 1.12);
            var secondEnd = Offset(size.width * (2.09 / 3), size.height / 1.12);
            path.quadraticBezierTo(
                secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
            canvas.drawPath(path, linePaint);
            canvas.drawCircle(
                Offset(size.width * (2.09 / 3), size.height / 1.12),
                7,
                circlePaint);
          } else if (item.from == 1 && item.to == 0) {
            canvas.drawCircle(Offset(size.width * (1 / 3.4), size.height / 2.5),
                7, circlePaint);
            path.moveTo(size.width * (1 / 3.4), size.height / 2.5);
            var firstStart = Offset(size.width * (1 / 2.2), size.height / 2.5);
            var firstEnd = Offset(size.width * (1 / 2.2), size.height / 3.2);

            path.quadraticBezierTo(
                firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
            var secondStart = Offset(size.width * (1 / 2), size.height / 7);
            var secondEnd = Offset(size.width * (1 / 1.4), size.height / 7);
            path.quadraticBezierTo(
                secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
            canvas.drawPath(path, linePaint);
          } else if (item.from == 1 && item.to == 2) {
            canvas.drawCircle(Offset(size.width * (1 / 3.2), size.height / 2.8),
                7, circlePaint);
            path.moveTo(size.width * (1 / 3.2), size.height / 2.8);
            var firstStart = Offset(size.width * (1 / 1.7), size.height / 2.6);
            var firstEnd = Offset(size.width * (1 / 1.64), size.height / 1.7);
            path.quadraticBezierTo(
                firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
            // changer here
            var secondStart =
                Offset(size.width * (1 / 1.64), size.height / 1.18);

            var secondEnd = Offset(size.width * (1 / 1.44), size.height / 1.18);
            path.quadraticBezierTo(
                secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
            canvas.drawPath(path, linePaint);
          } else if (item.from == 1 && item.to == 3) {
            canvas.drawCircle(Offset(size.width * (1 / 3.2), size.height / 2.8),
                7, circlePaint);
            path.moveTo(size.width * (1 / 3.2), size.height / 2.8);
            var firstStart = Offset(size.width * (1 / 1.7), size.height / 2.6);
            var firstEnd = Offset(size.width * (1 / 1.64), size.height / 1.7);
            path.quadraticBezierTo(
                firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
            // changer here
            var secondStart =
                Offset(size.width * (1 / 1.64), size.height / 1.18);

            var secondEnd = Offset(size.width * (1 / 1.44), size.height / 1.18);
            path.quadraticBezierTo(
                secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
            canvas.drawPath(path, linePaint);
          } else if (item.from == 2 && item.to == 0) {
            canvas.drawCircle(Offset(size.width * (1 / 3.2), size.height / 1.6),
                7, circlePaint);
            path.moveTo(size.width * (1 / 3.4), size.height / 1.6);
            var firstStart = Offset(size.width * (1 / 2.2), size.height / 1.6);
            var firstEnd = Offset(size.width * (1 / 2.2), size.height / 2);

            path.quadraticBezierTo(
                firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
            var secondStart = Offset(size.width * (1 / 2), size.height / 7);
            var secondEnd = Offset(size.width * (1 / 1.4), size.height / 7);
            path.quadraticBezierTo(
                secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
            canvas.drawPath(path, linePaint);
          } else if (item.from == 2 && item.to == 1) {
            canvas.drawCircle(Offset(size.width * (1 / 3.2), size.height / 1.6),
                7, circlePaint);
            path.moveTo(size.width * (1 / 3.4), size.height / 1.6);
            var firstStart = Offset(size.width * (1 / 2.2), size.height / 1.6);
            var firstEnd = Offset(size.width * (1 / 2.2), size.height / 1.8);

            path.quadraticBezierTo(
                firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
            var secondStart = Offset(size.width * (1 / 2), size.height / 3);
            var secondEnd = Offset(size.width * (1 / 1.4), size.height / 3);
            path.quadraticBezierTo(
                secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
            canvas.drawPath(path, linePaint);
          } else if (item.from == 2 && item.to == 3) {
            canvas.drawCircle(
                Offset(size.width * (1 / 3.2), size.height / 1.65),
                7,
                circlePaint);
            // starting point if (start = 3,end =4)
            path.moveTo(size.width * (1 / 3.2), size.height / 1.65);
            var firstStart = Offset(size.width * (1 / 1.7), size.height / 1.63);
            var firstEnd = Offset(size.width * (1 / 1.7), size.height / 1.20);

            path.quadraticBezierTo(
                firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
            var secondStart =
                Offset(size.width * (1 / 1.7), size.height / 1.10);
            var secondEnd = Offset(size.width * (1 / 1.44), size.height / 1.10);
            path.quadraticBezierTo(
                secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
            canvas.drawPath(path, linePaint);
          } else if (item.from == 3 && item.to == 0) {
            canvas.drawCircle(Offset(size.width * (1 / 3.2), size.height / 1.1),
                7, circlePaint);
            // starting point if (start = 4,end =1)
            path.moveTo(size.width * (1 / 3.4), size.height / 1.1);
            var firstStart = Offset(size.width * (1 / 2.2), size.height / 1.1);
            var firstEnd = Offset(size.width * (1 / 2.2), size.height / 1.5);

            path.quadraticBezierTo(
                firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
            var secondStart = Offset(size.width * (1 / 2), size.height / 7);
            var secondEnd = Offset(size.width * (1 / 1.4), size.height / 7);
            path.quadraticBezierTo(
                secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
            canvas.drawPath(path, linePaint);
          } else if (item.from == 3 && item.to == 1) {
            canvas.drawCircle(Offset(size.width * (1 / 3.2), size.height / 1.1),
                7, circlePaint);
            //    starting point if (start = 4,end =2)
            path.moveTo(size.width * (1 / 3.4), size.height / 1.1);
            var firstStart = Offset(size.width * (1 / 2.2), size.height / 1.1);
            var firstEnd = Offset(size.width * (1 / 2.2), size.height / 1.5);

            path.quadraticBezierTo(
                firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
            var secondStart = Offset(size.width * (1 / 2), size.height / 2.7);
            var secondEnd = Offset(size.width * (1 / 1.4), size.height / 2.7);
            path.quadraticBezierTo(
                secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
            canvas.drawPath(path, linePaint);
          } else if (item.from == 3 && item.to == 2) {
            canvas.drawCircle(Offset(size.width * (1 / 3.2), size.height / 1.1),
                7, circlePaint);
            //    starting point if (start = 4,end =3)
            path.moveTo(size.width * (1 / 3.4), size.height / 1.1);
            var firstStart = Offset(size.width * (1 / 2.2), size.height / 1.1);
            var firstEnd = Offset(size.width * (1 / 2.2), size.height / 1.25);

            path.quadraticBezierTo(
                firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
            var secondStart = Offset(size.width * (1 / 2), size.height / 1.6);
            var secondEnd = Offset(size.width * (1 / 1.4), size.height / 1.6);
            path.quadraticBezierTo(
                secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
            canvas.drawPath(path, linePaint);
          }
        }
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}


    // starting point if (start = 3,end =4)
    // path.moveTo(size.width * (1 / 3.2), size.height / 1.65);
    // var firstStart = Offset(size.width * (1 / 1.7), size.height / 1.63);
    // var firstEnd = Offset(size.width * (1 / 1.7), size.height / 1.20);

    // path.quadraticBezierTo(
    //     firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    // var secondStart = Offset(size.width * (1 / 1.7), size.height / 1.15);
    // var secondEnd = Offset(size.width * (1 / 1.44), size.height / 1.15);
    // path.quadraticBezierTo(
    //     secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    // // path.lineTo(size.width * (2.09 / 3), size.height / 1.18);
    // canvas.drawPath(path, paintt);

    //    // starting point if (start = 3,end =4)
    // path.moveTo(size.width * (1 / 3.2), size.height / 1.65);
    // var firstStart = Offset(size.width * (1 / 1.7), size.height / 1.63);
    // var firstEnd = Offset(size.width * (1 / 1.7), size.height / 1.20);

    // path.quadraticBezierTo(
    //     firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    // var secondStart = Offset(size.width * (1 / 1.7), size.height / 1.10);
    // var secondEnd = Offset(size.width * (1 / 1.44), size.height / 1.10);
    // path.quadraticBezierTo(
    //     secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    // ******************
     // starting point if (start = 4,end =1)
    // path.moveTo(size.width * (1 / 3.4), size.height / 1.1);
    // var firstStart = Offset(size.width * (1 / 2.2), size.height / 1.1);
    // var firstEnd = Offset(size.width * (1 / 2.2), size.height / 1.5);

    // path.quadraticBezierTo(
    //     firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    // var secondStart = Offset(size.width * (1 / 2), size.height / 7);
    // var secondEnd = Offset(size.width * (1 / 1.4), size.height / 7);
    // path.quadraticBezierTo(
    //     secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    // ****************************8
    //     // starting point if (start = 3,end =1)
    // path.moveTo(size.width * (1 / 3.4), size.height / 1.6);
    // var firstStart = Offset(size.width * (1 / 2.2), size.height / 1.6);
    // var firstEnd = Offset(size.width * (1 / 2.2), size.height / 2);

    // path.quadraticBezierTo(
    //     firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    // var secondStart = Offset(size.width * (1 / 2), size.height / 7);
    // var secondEnd = Offset(size.width * (1 / 1.4), size.height / 7);
    // path.quadraticBezierTo(
    //     secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    // *************************
    //     // starting point if (start = 2,end =1)
    // path.moveTo(size.width * (1 / 3.4), size.height / 2.5);
    // var firstStart = Offset(size.width * (1 / 2.2), size.height / 2.5);
    // var firstEnd = Offset(size.width * (1 / 2.2), size.height / 3.2);

    // path.quadraticBezierTo(
    //     firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    // var secondStart = Offset(size.width * (1 / 2), size.height / 7);
    // var secondEnd = Offset(size.width * (1 / 1.4), size.height / 7);
    // path.quadraticBezierTo(
    //     secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    // *************************
    //    starting point if (start = 4,end =2)
    // path.moveTo(size.width * (1 / 3.4), size.height / 1.1);
    // var firstStart = Offset(size.width * (1 / 2.2), size.height / 1.1);
    // var firstEnd = Offset(size.width * (1 / 2.2), size.height / 1.5);

    // path.quadraticBezierTo(
    //     firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    // var secondStart = Offset(size.width * (1 / 2), size.height / 2.7);
    // var secondEnd = Offset(size.width * (1 / 1.4), size.height / 2.7);
    // ****************************
    //  //    starting point if (start = 4,end =3)
    // path.moveTo(size.width * (1 / 3.4), size.height / 1.1);
    // var firstStart = Offset(size.width * (1 / 2.2), size.height / 1.1);
    // var firstEnd = Offset(size.width * (1 / 2.2), size.height / 1.25);

    // path.quadraticBezierTo(
    //     firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    // var secondStart = Offset(size.width * (1 / 2), size.height / 1.6);
    // var secondEnd = Offset(size.width * (1 / 1.4), size.height / 1.6);
    // path.quadraticBezierTo(
    //     secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    