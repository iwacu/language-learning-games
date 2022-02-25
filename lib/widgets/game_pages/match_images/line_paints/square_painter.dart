import 'package:flutter/material.dart';
import 'package:language_learning_game/models/offsets.dart';

class SquarePainter extends CustomPainter {
  final List<OffSets> offSets;

  SquarePainter({required this.offSets});
  @override
  void paint(Canvas canvas, Size size) {
    //  loop over object
    if (offSets.isEmpty) {
      return null;
    } else {
      offSets.forEach((item) {
        if (item.from == item.to) {
          drawSameLines(canvas: canvas, size: size, item: item);
        } else {
          drawPointOnDifferentLine(canvas, size, item);
        }
      });
    }
  }

  void drawSameLines({Canvas? canvas, Size? size, OffSets? item}) {
    final circlePaint = Paint()
      ..color = Color(int.parse(item!.color))
      ..strokeWidth = 10.0
      ..style = PaintingStyle.fill;
    canvas!.drawCircle(
        Offset(size!.width * (item.x1), size.height / item.y1), 5, circlePaint);
    canvas.drawLine(
        Offset(size.width * (item.x1), size.height / item.y1),
        Offset(size.width * (item.x2), size.height / item.y2),
        Paint()
          ..strokeWidth = 2
          ..color = Color(int.parse(item.color)));
    canvas.drawCircle(
        Offset(size.width * (item.x2), size.height / item.y2), 5, circlePaint);
  }

  void drawPointOnDifferentLine(Canvas canvas, Size size, OffSets item) {
    var index = item.from.toString() + item.to.toString();
    switch (int.parse(index)) {
      case 01:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 16,
            fsx1: 1 / 2.5,
            fsy1: 16,
            fex1: 1 / 2.2,
            fey1: 10,
            ssx1: 1 / 2,
            ssy1: 8,
            sex1: 1 / 1.29,
            sey1: 5.5,
          );
        }
        break;
      case 02:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 16,
            fsx1: 1 / 2.5,
            fsy1: 16,
            fex1: 1 / 2.2,
            fey1: 4.5,
            ssx1: 1 / 2,
            ssy1: 3.5,
            sex1: 1 / 1.61,
            sey1: 3.3,
          );
        }
        break;
      case 03:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 16,
            fsx1: 1 / 2.5,
            fsy1: 16,
            fex1: 1 / 2.2,
            fey1: 3.5,
            ssx1: 1 / 2,
            ssy1: 2.5,
            sex1: 1 / 1.29,
            sey1: 2.3,
          );
        }
        break;
      case 04:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 16,
            fsx1: 1 / 2.5,
            fsy1: 16,
            fex1: 1 / 2.2,
            fey1: 3,
            ssx1: 1 / 2,
            ssy1: 2,
            sex1: 1 / 1.61,
            sey1: 1.8,
          );
        }
        break;
      case 05:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 16,
            fsx1: 1 / 2.5,
            fsy1: 16,
            fex1: 1 / 2,
            fey1: 1.56,
            ssx1: 1 / 2,
            ssy1: 1.46,
            sex1: 1 / 1.29,
            sey1: 1.48,
          );
        }
        break;
      case 06:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 16,
            fsx1: 1 / 2.5,
            fsy1: 16,
            fex1: 1 / 2,
            fey1: 1.56,
            ssx1: 1 / 2,
            ssy1: 1.23,
            sex1: 1 / 1.61,
            sey1: 1.25,
          );
        }
        break;
      case 07:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 16,
            fsx1: 1 / 2.5,
            fsy1: 16,
            fex1: 1 / 2,
            fey1: 1.36,
            ssx1: 1 / 2,
            ssy1: 1.15,
            sex1: 1 / 1.29,
            sey1: 1.08,
          );
        }
        break;
      // *************** ___1___*********
      case 10:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 5.7,
            fsx1: 1 / 2.2,
            fsy1: 5.7,
            fex1: 1 / 2,
            fey1: 10,
            ssx1: 1 / 2,
            ssy1: 16,
            sex1: 1 / 1.61,
            sey1: 16,
          );
        }
        break;
      case 12:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 5.7,
            fsx1: 1 / 2.5,
            fsy1: 5.7,
            fex1: 1 / 2.3,
            fey1: 4,
            ssx1: 1 / 2.2,
            ssy1: 3.5,
            sex1: 1 / 1.61,
            sey1: 3.3,
          );
        }
        break;
      case 13:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 5.7,
            fsx1: 1 / 2.5,
            fsy1: 5.7,
            fex1: 1 / 2.3,
            fey1: 3,
            ssx1: 1 / 2.2,
            ssy1: 2.4,
            sex1: 1 / 1.29,
            sey1: 2.3,
          );
        }
        break;
      case 14:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 5.7,
            fsx1: 1 / 2.5,
            fsy1: 5.7,
            fex1: 1 / 2.3,
            fey1: 2.6,
            ssx1: 1 / 2.2,
            ssy1: 2,
            sex1: 1 / 1.61,
            sey1: 1.8,
          );
        }
        break;
      case 15:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 5.7,
            fsx1: 1 / 2.5,
            fsy1: 5.7,
            fex1: 1 / 2.3,
            fey1: 2,
            ssx1: 1 / 2.2,
            ssy1: 1.6,
            sex1: 1 / 1.29,
            sey1: 1.48,
          );
        }
        break;
      case 16:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 5.7,
            fsx1: 1 / 2.5,
            fsy1: 5.7,
            fex1: 1 / 2.3,
            fey1: 1.8,
            ssx1: 1 / 2.2,
            ssy1: 1.4,
            sex1: 1 / 1.61,
            sey1: 1.25,
          );
        }
        break;
      case 17:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 5.7,
            fsx1: 1 / 2.5,
            fsy1: 5.7,
            fex1: 1 / 2.3,
            fey1: 1.4,
            ssx1: 1 / 2.2,
            ssy1: 1.15,
            sex1: 1 / 1.29,
            sey1: 1.08,
          );
        }
        break;
      // ******************* __2___************
      case 20:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 3.3,
            fsx1: 1 / 2.2,
            fsy1: 3.3,
            fex1: 1 / 2,
            fey1: 8,
            ssx1: 1 / 2,
            ssy1: 16,
            sex1: 1 / 1.61,
            sey1: 16,
          );
        }
        break;
      case 21:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 3.3,
            fsx1: 1 / 2.2,
            fsy1: 3.3,
            fex1: 1 / 2,
            fey1: 4.3,
            ssx1: 1 / 2,
            ssy1: 5.5,
            sex1: 1 / 1.29,
            sey1: 5.5,
          );
        }
        break;
      case 23:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 3.3,
            fsx1: 1 / 2.5,
            fsy1: 3.1,
            fex1: 1 / 2.2,
            fey1: 2.8,
            ssx1: 1 / 2,
            ssy1: 2.5,
            sex1: 1 / 1.29,
            sey1: 2.3,
          );
        }
        break;
      case 24:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 3.3,
            fsx1: 1 / 2.5,
            fsy1: 3.3,
            fex1: 1 / 2.3,
            fey1: 2.4,
            ssx1: 1 / 2.2,
            ssy1: 2,
            sex1: 1 / 1.61,
            sey1: 1.8,
          );
        }
        break;
      case 25:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 3.3,
            fsx1: 1 / 2.5,
            fsy1: 3.3,
            fex1: 1 / 2.3,
            fey1: 1.9,
            ssx1: 1 / 2.2,
            ssy1: 1.4,
            sex1: 1 / 1.29,
            sey1: 1.48,
          );
        }
        break;
      case 26:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 3.3,
            fsx1: 1 / 2.5,
            fsy1: 3.3,
            fex1: 1 / 2.3,
            fey1: 1.6,
            ssx1: 1 / 2.2,
            ssy1: 1.2,
            sex1: 1 / 1.61,
            sey1: 1.25,
          );
        }
        break;
      case 27:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 3.3,
            fsx1: 1 / 2.5,
            fsy1: 3.3,
            fex1: 1 / 2.3,
            fey1: 1.2,
            ssx1: 1 / 2.2,
            ssy1: 1.04,
            sex1: 1 / 1.29,
            sey1: 1.08,
          );
        }
        break;
      // ******************* __3___************
      case 30:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 2.3,
            fsx1: 1 / 2.2,
            fsy1: 2.3,
            fex1: 1 / 2,
            fey1: 8.8,
            ssx1: 1 / 2,
            ssy1: 16,
            sex1: 1 / 1.61,
            sey1: 16,
          );
        }
        break;
      case 31:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 2.3,
            fsx1: 1 / 2.2,
            fsy1: 2.3,
            fex1: 1 / 2,
            fey1: 3.8,
            ssx1: 1 / 2,
            ssy1: 5.5,
            sex1: 1 / 1.29,
            sey1: 5.5,
          );
        }
        break;
      case 32:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 2.3,
            fsx1: 1 / 2.2,
            fsy1: 2.3,
            fex1: 1 / 2,
            fey1: 3,
            ssx1: 1 / 2,
            ssy1: 3.3,
            sex1: 1 / 1.61,
            sey1: 3.3,
          );
        }
        break;
      case 34:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 2.3,
            fsx1: 1 / 2.5,
            fsy1: 2.3,
            fex1: 1 / 2.3,
            fey1: 2.1,
            ssx1: 1 / 2.2,
            ssy1: 2,
            sex1: 1 / 1.61,
            sey1: 1.8,
          );
        }
        break;
      case 35:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 2.3,
            fsx1: 1 / 2.5,
            fsy1: 2.3,
            fex1: 1 / 2.3,
            fey1: 1.8,
            ssx1: 1 / 2.2,
            ssy1: 1.4,
            sex1: 1 / 1.29,
            sey1: 1.48,
          );
        }
        break;
      case 36:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 2.3,
            fsx1: 1 / 2.5,
            fsy1: 2.3,
            fex1: 1 / 2.3,
            fey1: 1.35,
            ssx1: 1 / 2.2,
            ssy1: 1.23,
            sex1: 1 / 1.61,
            sey1: 1.25,
          );
        }
        break;
      case 37:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 2.3,
            fsx1: 1 / 2.5,
            fsy1: 2.3,
            fex1: 1 / 2.3,
            fey1: 1.2,
            ssx1: 1 / 2.2,
            ssy1: 1.06,
            sex1: 1 / 1.29,
            sey1: 1.08,
          );
        }
        break;
      // ******************* __4___************
      case 40:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 1.8,
            fsx1: 1 / 2.2,
            fsy1: 1.8,
            fex1: 1 / 2,
            fey1: 8.8,
            ssx1: 1 / 2,
            ssy1: 16,
            sex1: 1 / 1.61,
            sey1: 16,
          );
        }
        break;
      case 41:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 1.8,
            fsx1: 1 / 2.2,
            fsy1: 1.8,
            fex1: 1 / 2,
            fey1: 3.8,
            ssx1: 1 / 2,
            ssy1: 5.5,
            sex1: 1 / 1.29,
            sey1: 5.5,
          );
        }
        break;
      case 42:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 1.8,
            fsx1: 1 / 2.2,
            fsy1: 1.8,
            fex1: 1 / 2,
            fey1: 2.8,
            ssx1: 1 / 2,
            ssy1: 3.3,
            sex1: 1 / 1.61,
            sey1: 3.3,
          );
        }
        break;
      case 43:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 1.8,
            fsx1: 1 / 2.2,
            fsy1: 1.8,
            fex1: 1 / 2,
            fey1: 2,
            ssx1: 1 / 2,
            ssy1: 2.3,
            sex1: 1 / 1.29,
            sey1: 2.3,
          );
        }
        break;
      case 45:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 1.8,
            fsx1: 1 / 2.5,
            fsy1: 1.8,
            fex1: 1 / 2.3,
            fey1: 1.6,
            ssx1: 1 / 2.2,
            ssy1: 1.5,
            sex1: 1 / 1.29,
            sey1: 1.48,
          );
        }
        break;
      case 46:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 1.8,
            fsx1: 1 / 2.5,
            fsy1: 1.8,
            fex1: 1 / 2.3,
            fey1: 1.35,
            ssx1: 1 / 2.2,
            ssy1: 1.23,
            sex1: 1 / 1.61,
            sey1: 1.25,
          );
        }
        break;
      case 47:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 1.8,
            fsx1: 1 / 2.5,
            fsy1: 1.8,
            fex1: 1 / 2.3,
            fey1: 1.35,
            ssx1: 1 / 2.2,
            ssy1: 1.05,
            sex1: 1 / 1.29,
            sey1: 1.08,
          );
        }
        break;
      // ******************** _5_ *************
      case 50:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 1.48,
            fsx1: 1 / 2.2,
            fsy1: 1.48,
            fex1: 1 / 2,
            fey1: 8,
            ssx1: 1 / 2,
            ssy1: 16,
            sex1: 1 / 1.61,
            sey1: 16,
          );
        }
        break;
      case 51:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 1.48,
            fsx1: 1 / 2.2,
            fsy1: 1.48,
            fex1: 1 / 2,
            fey1: 3.86,
            ssx1: 1 / 2,
            ssy1: 5.5,
            sex1: 1 / 1.29,
            sey1: 5.5,
          );
        }
        break;
      case 52:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 1.48,
            fsx1: 1 / 2.2,
            fsy1: 1.48,
            fex1: 1 / 2,
            fey1: 2.86,
            ssx1: 1 / 2,
            ssy1: 3.3,
            sex1: 1 / 1.61,
            sey1: 3.3,
          );
        }
        break;
      case 53:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 1.48,
            fsx1: 1 / 2.2,
            fsy1: 1.48,
            fex1: 1 / 2,
            fey1: 1.86,
            ssx1: 1 / 2,
            ssy1: 2.3,
            sex1: 1 / 1.29,
            sey1: 2.3,
          );
        }
        break;
      case 54:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 1.48,
            fsx1: 1 / 2.2,
            fsy1: 1.48,
            fex1: 1 / 2,
            fey1: 1.66,
            ssx1: 1 / 2,
            ssy1: 1.81,
            sex1: 1 / 1.61,
            sey1: 1.8,
          );
        }
        break;
      case 56:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 1.48,
            fsx1: 1 / 2.5,
            fsy1: 1.48,
            fex1: 1 / 2.3,
            fey1: 1.35,
            ssx1: 1 / 2.2,
            ssy1: 1.23,
            sex1: 1 / 1.61,
            sey1: 1.25,
          );
        }
        break;
      case 57:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 1.48,
            fsx1: 1 / 2.5,
            fsy1: 1.48,
            fex1: 1 / 2.3,
            fey1: 1.35,
            ssx1: 1 / 2.2,
            ssy1: 1.05,
            sex1: 1 / 1.29,
            sey1: 1.08,
          );
        }
        break;
      // **************** __6__ ************
      case 60:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 1.25,
            fsx1: 1 / 2.2,
            fsy1: 1.25,
            fex1: 1 / 2,
            fey1: 9.5,
            ssx1: 1 / 2,
            ssy1: 15.6,
            sex1: 1 / 1.61,
            sey1: 16,
          );
        }
        break;
      case 61:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 1.25,
            fsx1: 1 / 2.2,
            fsy1: 1.25,
            fex1: 1 / 2,
            fey1: 3.8,
            ssx1: 1 / 2,
            ssy1: 5.4,
            sex1: 1 / 1.29,
            sey1: 5.5,
          );
        }
        break;
      case 62:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 1.25,
            fsx1: 1 / 2.2,
            fsy1: 1.25,
            fex1: 1 / 2,
            fey1: 2.8,
            ssx1: 1 / 2,
            ssy1: 3.2,
            sex1: 1 / 1.61,
            sey1: 3.3,
          );
        }
        break;
      case 63:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 1.25,
            fsx1: 1 / 2.2,
            fsy1: 1.25,
            fex1: 1 / 2,
            fey1: 1.8,
            ssx1: 1 / 2,
            ssy1: 2.2,
            sex1: 1 / 1.29,
            sey1: 2.3,
          );
        }
        break;
      case 64:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 1.25,
            fsx1: 1 / 2.2,
            fsy1: 1.25,
            fex1: 1 / 2,
            fey1: 1.56,
            ssx1: 1 / 2,
            ssy1: 1.9,
            sex1: 1 / 1.61,
            sey1: 1.8,
          );
        }
        break;
      case 65:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 1.25,
            fsx1: 1 / 2.2,
            fsy1: 1.25,
            fex1: 1 / 2,
            fey1: 1.36,
            ssx1: 1 / 2,
            ssy1: 1.49,
            sex1: 1 / 1.29,
            sey1: 1.48,
          );
        }
        break;
      case 67:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 1.25,
            fsx1: 1 / 2.5,
            fsy1: 1.25,
            fex1: 1 / 2.3,
            fey1: 1.18,
            ssx1: 1 / 2.2,
            ssy1: 1.05,
            sex1: 1 / 1.29,
            sey1: 1.08,
          );
        }
        break;
      // **************** __7__ ************
      case 70:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 1.08,
            fsx1: 1 / 2.2,
            fsy1: 1.08,
            fex1: 1 / 2,
            fey1: 9.5,
            ssx1: 1 / 2,
            ssy1: 15.6,
            sex1: 1 / 1.61,
            sey1: 16,
          );
        }
        break;
      case 71:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 1.08,
            fsx1: 1 / 2.2,
            fsy1: 1.08,
            fex1: 1 / 2,
            fey1: 3.5,
            ssx1: 1 / 2,
            ssy1: 5.4,
            sex1: 1 / 1.29,
            sey1: 5.5,
          );
        }
        break;
      case 72:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 1.08,
            fsx1: 1 / 2.2,
            fsy1: 1.08,
            fex1: 1 / 2,
            fey1: 2.58,
            ssx1: 1 / 2,
            ssy1: 3.4,
            sex1: 1 / 1.61,
            sey1: 3.3,
          );
        }
        break;
      case 73:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 1.08,
            fsx1: 1 / 2.2,
            fsy1: 1.08,
            fex1: 1 / 2,
            fey1: 1.58,
            ssx1: 1 / 2,
            ssy1: 2.4,
            sex1: 1 / 1.29,
            sey1: 2.3,
          );
        }
        break;
      case 74:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 1.08,
            fsx1: 1 / 2.2,
            fsy1: 1.08,
            fex1: 1 / 2,
            fey1: 1.48,
            ssx1: 1 / 2,
            ssy1: 1.9,
            sex1: 1 / 1.61,
            sey1: 1.8,
          );
        }
        break;
      case 75:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 1.08,
            fsx1: 1 / 2.2,
            fsy1: 1.08,
            fex1: 1 / 2,
            fey1: 1.38,
            ssx1: 1 / 2,
            ssy1: 1.51,
            sex1: 1 / 1.29,
            sey1: 1.48,
          );
        }
        break;
      case 76:
        {
          paintLines(
            canvas: canvas,
            color: item.color,
            size: size,
            mvx1: 1 / 3.5,
            mvy1: 1.08,
            fsx1: 1 / 2.5,
            fsy1: 1.08,
            fex1: 1 / 2.3,
            fey1: 1.18,
            ssx1: 1 / 2.2,
            ssy1: 1.28,
            sex1: 1 / 1.61,
            sey1: 1.25,
          );
        }
        break;
      default:
    }
  }

  void paintLines({
    Canvas? canvas,
    Size? size,
    String? color,
    double? mvx1,
    double? mvy1,
    double? fsx1,
    double? fsy1,
    double? fex1,
    double? fey1,
    double? ssx1,
    double? ssy1,
    double? sex1,
    double? sey1,
  }
      // OffSets item
      ) {
    final path = Path();
    final circlePaint = Paint()
      ..color = Color(int.parse(color!))
      ..strokeWidth = 10.0
      ..style = PaintingStyle.fill;
    final linePaint = Paint()
      ..color = Color(int.parse(color))
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;
    canvas!.drawCircle(
        Offset(size!.width * mvx1!, size.height / mvy1!), 5, circlePaint);
    path.moveTo(size.width * mvx1, size.height / mvy1);
    var firstStart = Offset(size.width * (fsx1!), size.height / fsy1!);
    var firstEnd = Offset(size.width * (fex1!), size.height / fey1!);
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    var secondStart = Offset(size.width * (ssx1!), size.height / ssy1!);
    var secondEnd = Offset(size.width * (sex1!), size.height / sey1!);
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    canvas.drawPath(path, linePaint);
    canvas.drawCircle(
        Offset(size.width * (sex1), size.height / sey1), 5, circlePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
