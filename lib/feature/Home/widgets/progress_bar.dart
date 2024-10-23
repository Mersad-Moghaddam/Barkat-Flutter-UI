import 'package:flutter/material.dart';

class SemiCircleProgressBar extends CustomPainter {
  final double progress;
  final Color backgroundColor;
  final Color foregroundColor;

  SemiCircleProgressBar({
    required this.progress,
    required this.backgroundColor,
    required this.foregroundColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final rect =
        Rect.fromLTWH(-2, -3.5, size.width * 1.0689, size.height * 1.3);
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 10;

    // Draw background
    paint.color = backgroundColor;
    canvas.drawArc(rect, 3.14, 3.14, false, paint);

    // Draw progress
    paint.color = foregroundColor;
    canvas.drawArc(rect, 3.14, 3.14 * progress, false, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
