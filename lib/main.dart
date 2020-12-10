import 'package:flutter/material.dart';

import 'curve_painter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawing Paths',
      home: Stack(
        children: [
          Container(
            color: Colors.white,
            child: CustomPaint(
              painter: CurvePainter(),
            ),
          ),
        ],
      ),
    );
  }
}
