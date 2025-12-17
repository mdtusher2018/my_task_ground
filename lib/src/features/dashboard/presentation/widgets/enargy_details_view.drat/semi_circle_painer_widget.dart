
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:scube_task/src/shared/themes/colors.dart';


class SemiCirclePainter extends CustomPainter {
  final double percentage; // 0 - 100

  SemiCirclePainter({required this.percentage});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    /// Your exact design angles
    final startAngle = 3 * pi / 4;
    final totalSweepAngle = pi * 1.5;

    /// Convert percentage to sweep
    final filledSweepAngle = totalSweepAngle * (percentage.clamp(0, 100) / 100);

    final bgPaint = Paint()
      ..color = AppColors.primary
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 16;

    final valuePaint = Paint()
      ..color = AppColors.primary
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 16;

    /// Background arc
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      totalSweepAngle,
      false,
      bgPaint,
    );

    /// Filled arc based on percentage
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      filledSweepAngle,
      false,
      valuePaint,
    );
  }

  @override
  bool shouldRepaint(covariant SemiCirclePainter oldDelegate) {
    return oldDelegate.percentage != percentage;
  }
}
