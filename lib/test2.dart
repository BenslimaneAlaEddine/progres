import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Test2 extends StatelessWidget {
  ValueChanged<DragUpdateDetails >? c;
  double a;
  Test2({super.key,required this.c,required this.a});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Transform(alignment: Alignment.center,
        transform: Matrix4.identity()..setEntry(3, 2, 0.001)..rotateY(a),
        child: GestureDetector(onHorizontalDragUpdate: c,
          child: Container(
            height: 100,
            width: 100,
            color: Colors.red,child: Text("data"),
          ),
        ),
      ),
    );
  }
}
