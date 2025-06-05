import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Test2 extends StatelessWidget {
   ValueChanged<DragUpdateDetails >? c;
   // double? a;
   double x;
   double y;
  Test2({super.key,required this.c,required this.x,required this.y});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Transform(alignment: Alignment.center,
          transform: Matrix4.identity()..translate(x,y),
          child: GestureDetector(onHorizontalDragUpdate: c,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.red,child: Text("data"),
            ),
          ),
        ),
      ),
    );
  }
}
