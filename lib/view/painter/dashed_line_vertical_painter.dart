import 'package:flutter/material.dart';

class DashedLineVerticalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double dashHeight = 6, dashSpace = 8, startY = 0;
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 0.5;
    while (startY <= size.height) {
      if (startY == 0) {
        dashHeight = 4;
      } else {
        dashHeight = 6;
      }
      canvas.drawLine(Offset(0, startY), Offset(0, startY + dashHeight), paint);
      startY += dashHeight + dashSpace;
    }
    dashHeight = 4;
    canvas.drawLine(Offset(0, startY), Offset(0, startY + dashHeight), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}