import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Test2 extends StatelessWidget {
  ValueChanged<DragUpdateDetails>? c;
  GestureDragEndCallback? g;
  double angle;
bool isFont;
  // double x;
  // double y;
  Test2({
    super.key,
    required this.c,
    required this.g,
    required this.angle,
    required this.isFont
  });

  @override
  Widget build(BuildContext context) {
    // angle=0;
    return Scaffold(
      body: Center(
        child: Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateY(angle),
          child: GestureDetector(
            onHorizontalDragEnd: g,
            onHorizontalDragUpdate: c,
            child: isFont ? Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: const Text("Font"),
            ) : Transform(alignment: Alignment.center,
              transform: Matrix4.rotationY(pi),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.green,
                child: const Text("Back."),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
