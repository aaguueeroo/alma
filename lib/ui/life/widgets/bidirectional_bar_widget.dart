import 'package:flutter/material.dart';
import 'package:alma/app/constants/sizing.dart';
import 'package:alma/app/theme/app_colors.dart';

class BidirectionalBarWidget extends StatelessWidget {
  const BidirectionalBarWidget({
    super.key,
    required this.value,
    this.minValue = -100,
    this.maxValue = 100,
    this.height,
  });

  final int value;
  final int minValue;
  final int maxValue;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    final double effectiveHeight = height ?? kProgressBarHeight;
    final double range = (maxValue - minValue).toDouble();
    final double centerFraction = (0 - minValue) / range;
    final double valueFraction = (value - minValue) / range;
    final bool isPositive = value >= 0;
    return SizedBox(
      height: effectiveHeight,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(kBorderRadiusSmall),
        child: CustomPaint(
          size: Size(double.infinity, effectiveHeight),
          painter: _BidirectionalBarPainter(
            centerFraction: centerFraction,
            valueFraction: valueFraction,
            isPositive: isPositive,
            backgroundColor: colors.surfaceContainerHighest,
            positiveColor: AppColors.positive,
            negativeColor: AppColors.negative,
          ),
        ),
      ),
    );
  }
}

class _BidirectionalBarPainter extends CustomPainter {
  _BidirectionalBarPainter({
    required this.centerFraction,
    required this.valueFraction,
    required this.isPositive,
    required this.backgroundColor,
    required this.positiveColor,
    required this.negativeColor,
  });

  final double centerFraction;
  final double valueFraction;
  final bool isPositive;
  final Color backgroundColor;
  final Color positiveColor;
  final Color negativeColor;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint bgPaint = Paint()..color = backgroundColor;
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), bgPaint);
    final double centerX = size.width * centerFraction;
    final double valueX = size.width * valueFraction;
    final Paint fillPaint = Paint()
      ..color = isPositive ? positiveColor : negativeColor;
    if (isPositive) {
      canvas.drawRect(
        Rect.fromLTRB(centerX, 0, valueX, size.height),
        fillPaint,
      );
    } else {
      canvas.drawRect(
        Rect.fromLTRB(valueX, 0, centerX, size.height),
        fillPaint,
      );
    }
    final Paint centerPaint = Paint()
      ..color = backgroundColor.withValues(alpha: 0.8)
      ..strokeWidth = 1.5;
    canvas.drawLine(
      Offset(centerX, 0),
      Offset(centerX, size.height),
      centerPaint,
    );
  }

  @override
  bool shouldRepaint(covariant _BidirectionalBarPainter oldDelegate) {
    return oldDelegate.valueFraction != valueFraction ||
        oldDelegate.isPositive != isPositive;
  }
}
