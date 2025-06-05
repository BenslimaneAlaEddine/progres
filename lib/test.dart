import 'package:flutter/material.dart';
import 'dart:math';

import 'package:progres/test2.dart';


class FlipCardDemo extends StatefulWidget {
  const FlipCardDemo({super.key,});

  @override
  _FlipCardDemoState createState() => _FlipCardDemoState();
}

class _FlipCardDemoState extends State<FlipCardDemo> {
  double _angle = 0.0;       // زاوية القلب
  bool _isFront = true;      // هل نظهر الوجه الأمامي؟

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: GestureDetector(
          onHorizontalDragUpdate: (details) {
            setState(() {
              _angle += details.delta.dx * 0.01;
              print(_angle);
              // if(_angle>pi || _angle<-pi) _angle=0;
              // قلب الوجه عند الوصول إلى المنتصف تقريبًا
              if (_angle.abs() >= pi / 2 && _angle.abs() < pi) {
                _isFront = false;
              } else {
                _isFront = true;
              }

              // إعادة الضبط إذا تجاوزنا 360 درجة (2 * pi)
              if (_angle.abs() > 2 * pi) {
                print("hAaaaaaaaaaaaahhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhani ${2 * pi}");
                _angle = 0;
              }
            });
          },
          // onHorizontalDragEnd: (details){
          //   print("hhhhhhhhhhhhhhhhhhhhhhhh");
          //  if(_angle>=1.06 || _angle<=-1.06)
          //    // _angle=0;
          //    setState(() {
          //    print("$_angle eeeeeellllllaaaaaaa haqqqqqqqa maaaaaagllllooooooob");
          //    _angle=pi;
          //    print("$_angle");
          //  });
          // },
          child: Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001) // تأثير ثلاثي الأبعاد
              ..rotateY(_angle),
            child: _isFront
                ? _buildFront()
                : Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(pi), // قلب الواجهة الخلفية
              child: _buildBack(),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFront() {
    return Container(
      height: 200,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Center(
        child: Text(
          'Front',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildBack() {
    return Container(
      height: 200,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Center(
        child: Text(
          'Back',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}