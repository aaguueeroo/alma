import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:alma/app/theme/app_colors.dart';
import 'package:alma/app/constants/spacing.dart';

final List<Color> _skillColors = [
  AppColors.skillIntelligence,
  AppColors.skillCreativity,
  AppColors.skillCommunication,
  AppColors.skillEmotionalStability,
  AppColors.skillFitness,
];

class RadarChartWidget extends StatelessWidget {
  const RadarChartWidget({
    super.key,
    required this.values,
    required this.size,
    this.color,
  });

  final Map<String, double> values;
  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size + kSpacing64,
      height: size + kSpacing64,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomPaint(
            size: Size(size, size),
            painter: _RadarChartPainter(
              values: values,
              color: color ?? Theme.of(context).colorScheme.primary,
            ),
          ),
          _RadarChartLabels(values: values, size: size),
        ],
      ),
    );
  }
}

class _RadarChartPainter extends CustomPainter {
  _RadarChartPainter({required this.values, required this.color});

  final Map<String, double> values;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final List<String> keys = values.keys.toList();
    if (keys.isEmpty) return;
    final int vertexCount = keys.length;
    final double centerX = size.width / 2;
    final double centerY = size.height / 2;
    final double radius = math.min(size.width, size.height) / 2 - kSpacing24;
    final List<Offset> vertexOffsets = _computeVertexOffsets(
      centerX: centerX,
      centerY: centerY,
      radius: radius,
      vertexCount: vertexCount,
    );
    _drawBackgroundPolygon(canvas, vertexOffsets);
    _drawValuePolygon(canvas, vertexOffsets, keys, centerX, centerY);
  }

  List<Offset> _computeVertexOffsets({
    required double centerX,
    required double centerY,
    required double radius,
    required int vertexCount,
  }) {
    final List<Offset> offsets = [];
    for (int i = 0; i < vertexCount; i++) {
      final double angle = -math.pi / 2 + (2 * math.pi * i / vertexCount);
      offsets.add(
        Offset(
          centerX + radius * math.cos(angle),
          centerY + radius * math.sin(angle),
        ),
      );
    }
    return offsets;
  }

  void _drawBackgroundPolygon(Canvas canvas, List<Offset> vertexOffsets) {
    final Paint outlinePaint = Paint()
      ..color = color.withValues(alpha: 0.3)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;
    final Path path = Path()..addPolygon(vertexOffsets, true);
    canvas.drawPath(path, outlinePaint);
  }

  void _drawValuePolygon(
    Canvas canvas,
    List<Offset> vertexOffsets,
    List<String> keys,
    double centerX,
    double centerY,
  ) {
    final List<Offset> valueOffsets = [];
    for (int i = 0; i < keys.length; i++) {
      final double value = (values[keys[i]] ?? 0.0).clamp(0.0, 1.0);
      final Offset vertex = vertexOffsets[i];
      final double dx = centerX + (vertex.dx - centerX) * value;
      final double dy = centerY + (vertex.dy - centerY) * value;
      valueOffsets.add(Offset(dx, dy));
    }
    if (valueOffsets.length < 2) return;
    final Path fillPath = Path()..addPolygon(valueOffsets, true);
    final Paint fillPaint = Paint()
      ..color = color.withValues(alpha: 0.4)
      ..style = PaintingStyle.fill;
    canvas.drawPath(fillPath, fillPaint);
    final Paint strokePaint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    canvas.drawPath(fillPath, strokePaint);
  }

  @override
  bool shouldRepaint(covariant _RadarChartPainter oldDelegate) {
    return oldDelegate.values != values || oldDelegate.color != color;
  }
}

class _RadarChartLabels extends StatelessWidget {
  const _RadarChartLabels({required this.values, required this.size});

  final Map<String, double> values;
  final double size;

  @override
  Widget build(BuildContext context) {
    final List<String> keys = values.keys.toList();
    if (keys.isEmpty) return const SizedBox.shrink();
    final int vertexCount = keys.length;
    final double radius = size / 2 - kSpacing12;
    final List<Widget> labelWidgets = [];
    for (int i = 0; i < vertexCount; i++) {
      final double angle = -math.pi / 2 + (2 * math.pi * i / vertexCount);
      final double labelRadius = radius + kSpacing20;
      final double x = size / 2 + labelRadius * math.cos(angle);
      final double y = size / 2 + labelRadius * math.sin(angle);
      final Color labelColor = _skillColors[i % _skillColors.length];
      labelWidgets.add(
        Positioned(
          left: x - kSpacing32,
          top: y - kSpacing12,
          width: kSpacing64,
          child: Text(
            keys[i],
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: labelColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      );
    }
    return IgnorePointer(
      child: SizedBox(
        width: size + kSpacing64,
        height: size + kSpacing64,
        child: Stack(children: labelWidgets),
      ),
    );
  }
}
