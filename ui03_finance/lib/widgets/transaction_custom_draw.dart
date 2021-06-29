import 'package:flutter/material.dart';
import 'package:ui03_finance/color_pallete.dart';

class TransactionBackground extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var blueStroke = Paint()
      ..color = kBlue
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    var blueFill = Paint()
      ..color = kBlue
      ..style = PaintingStyle.fill;

    var lightBlueFill = Paint()
      ..color = kBackground
      ..style = PaintingStyle.fill;

    var darkBlueStroke = Paint()
      ..color = kDarkBlue
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    var whiteFill = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Offset center = Offset(size.width / 2, size.height / 2);
    double circle1Radius = (size.width - size.width * 0.2) / 2;
    double circle2Radius = size.width / 3.5;
    double circle3Radius = size.width / 3.5 - (size.width / 3.5 * 0.025);
    double circle4Radius = size.width / 4.5;
    double circle5Radius = size.width / 7;

    canvas.drawCircle(center, circle1Radius, blueStroke);
    canvas.drawCircle(center, circle2Radius, whiteFill);
    canvas.drawCircle(center, circle3Radius, blueFill);
    canvas.drawCircle(center, circle4Radius, lightBlueFill);
    canvas.drawCircle(center, circle5Radius, darkBlueStroke);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
