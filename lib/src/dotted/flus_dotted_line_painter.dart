import 'dart:ui';

import 'package:flutter/material.dart';

import 'flus_dotted_shape.dart';
import 'flus_dotted_shape_corner.dart';

/// 점선을 그리기 위한 Painter
///
/// color : 선의 색상. Default (black)
/// strokeWidth : 선의 두께. Default (1.0)
/// dottedLength : 점선의 길이. Default (1.0)
/// dottedGap : 점선의 간격. Default (1.0)
/// shape : 점선이 그려지는 모양. Default (line)
/// corner : 점선이 아닐때, 모양을 위한 모서리 Radius. Default (FlusStyledLineCorner.all(0.0))
class FlusDottedLinePainter extends CustomPainter {
  Color color = Colors.black;
  double strokeWidth = 1.0;
  double dottedLength = 1.0;
  double dottedGap = 1.0;

  FlusDottedShape shape = FlusDottedShape.line;
  FlusDottedShapeCorner corner = FlusDottedShapeCorner.all(0.0);

  @override
  void paint(Canvas canvas, Size size) {
    final isHorizontal = size.width > size.height;
    final Paint paint = Paint()
      ..isAntiAlias = true
      ..filterQuality = FilterQuality.high
      ..style = PaintingStyle.stroke
      ..color = color
      ..strokeWidth = strokeWidth;

    switch (shape) {
      case FlusDottedShape.line:
        double length = isHorizontal ? size.width : size.height;
        double count = (length) / (dottedLength + dottedGap);
        if (count < 2.0) return;
        var startOffset = const Offset(0, 0);
        for (int i = 0; i < count.toInt(); i++) {
          canvas.drawLine(
            startOffset,
            startOffset.translate(
              (isHorizontal ? dottedLength : 0),
              (isHorizontal ? 0 : dottedLength),
            ),
            paint,
          );
          startOffset = startOffset.translate(
            (isHorizontal ? (dottedLength + dottedGap) : 0),
            (isHorizontal ? 0 : (dottedLength + dottedGap)),
          );
        }
        break;
      case FlusDottedShape.square:
        Path path = Path();
        path.addRRect(RRect.fromLTRBAndCorners(
          0,
          0,
          size.width,
          size.height,
          topLeft: Radius.circular(corner.leftTop),
          topRight: Radius.circular(corner.rightTop),
          bottomLeft: Radius.circular(corner.rightBottom),
          bottomRight: Radius.circular(corner.leftBottom),
        ));

        Path draw = _buildDashPath(path, dottedLength, dottedGap);
        canvas.drawPath(draw, paint);
        break;
    }
  }

  Path _buildDashPath(Path path, double dottedLength, double space) {
    final Path p = Path();
    for (PathMetric metric in path.computeMetrics()) {
      double start = 0.0;
      while (start < metric.length) {
        double end = start + dottedLength;
        p.addPath(metric.extractPath(start, end), Offset.zero);
        start = end + space;
      }
    }
    return p;
  }

  @override
  bool shouldRepaint(FlusDottedLinePainter oldDelegate) {
    return true;
  }
}
