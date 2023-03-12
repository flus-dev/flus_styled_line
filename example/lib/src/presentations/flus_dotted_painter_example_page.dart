import 'package:flus_styled_line/flus_styled_line.dart';
import 'package:flutter/material.dart';

class FlusDottedPainterExamplePage extends StatelessWidget {
  const FlusDottedPainterExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlusDottedPainter'),
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(16),
          child: ListView(
            children: [
              CustomPaint(
                painter: FlusDottedLinePainter(),
                child: const Text('기본 점선'),
              ),
              const SizedBox(height: 16),
              CustomPaint(
                painter: FlusDottedLinePainter()..color = Colors.red,
                child: const Text('색상 변경'),
              ),
              const SizedBox(height: 16),
              CustomPaint(
                painter: FlusDottedLinePainter()
                  ..dottedGap = 8
                  ..dottedLength = 8,
                child: const Text('간격 & 길이 변경'),
              ),
              const SizedBox(height: 16),
              CustomPaint(
                painter: FlusDottedLinePainter()..strokeWidth = 10,
                child: Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: const Text('strokeWidth 변경'),
                ),
              ),
              const SizedBox(height: 16),
              CustomPaint(
                painter: FlusDottedLinePainter()
                  ..strokeWidth = 10
                  ..dottedGap = 8
                  ..dottedLength = 8,
                child: Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: const Text('strokeWidth & 간격 & 길이 변경'),
                ),
              ),
              const SizedBox(height: 16),
              CustomPaint(
                painter: FlusDottedLinePainter()
                  ..strokeCap = StrokeCap.round
                  ..strokeWidth = 10
                  ..dottedGap = 20
                  ..dottedLength = 1,
                child: Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: const Text('strokeCap & strokeWidth & 간격 & 길이 변경'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
