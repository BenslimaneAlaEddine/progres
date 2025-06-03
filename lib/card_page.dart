// import 'dart:nativewrappers/_internal/vm/lib/ffi_allocation_patch.dart';

import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(home: FlipCardDemoState()));

class FlipCardDemoState extends StatelessWidget {
  final GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: GestureDetector(
          onVerticalDragEnd: (a) {
            cardKey.currentState!.toggleCard();
          },
          child: RotatedBox(
            quarterTurns: 3,
            child: FlipCard(
              key: cardKey,
              direction: FlipDirection.VERTICAL,
              flipOnTouch: false,
              // fill: Fill.fillBack,
              speed: 1300,
              front: Container(
                padding: const EdgeInsets.all(8),
                width: 400,
                //450
                height: 250,
                // 300
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        // offset: Offset(0, 0),
                        blurRadius: 5,
                      )
                    ]),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("الجمهورية الجزائرية الديمقراطية الشعبية"),
                    Text("وزارة التعليم العالي والبحث العلمي"),
                    Text(
                      "المركز الجامعي النعامة",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "بطاقة الطالب",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              back: Container(
                padding: const EdgeInsets.all(8),
                width: 400,
                //450
                height: 250,
                // 300
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        // offset: Offset(0, 0),
                        blurRadius: 5,
                      )
                    ]),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("الجمهورية الجزائرية الديمقراطية الشعبية"),
                    Text("وزارة التعليم العالي والبحث العلمي"),
                    Text(
                      "بطاقة النقل",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }



// Widget _buildFront() {
//   return Container(
//     width: 250,
//     height: 150,
//     decoration: BoxDecoration(
//       color: Colors.blue,
//       borderRadius: BorderRadius.circular(12),
//     ),
//     alignment: Alignment.center,
//     child: Text("وجه أمامي",
//         style: TextStyle(color: Colors.white, fontSize: 24)),
//   );
// }
//
// Widget _buildBack() {
//   return Container(
//     width: 250,
//     height: 150,
//     decoration: BoxDecoration(
//       color: Colors.orange,
//       borderRadius: BorderRadius.circular(12),
//     ),
//     alignment: Alignment.center,
//     child:
//         Text("وجه خلفي", style: TextStyle(color: Colors.white, fontSize: 24)),
//   );
// }
}
