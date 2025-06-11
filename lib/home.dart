import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:progres/card_page.dart';
import 'package:progres/home_page.dart';
import 'package:progres/test.dart';
import 'package:progres/test2.dart';

import 'home_bottom_navigation_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  List<List<Widget>> elements = [
    [
      const Icon(
        FontAwesomeIcons.solidFileText,
        color: Colors.white,
      ),
      const Text(
        "التبرئة الالكترونية",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      )
    ],
    [
      const Icon(
        FontAwesomeIcons.tableList,
        color: Colors.white,
      ),
      const Text(
        "الجدول الزمني",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      )
    ],
    [
      const Icon(
        FontAwesomeIcons.peopleGroup,
        color: Colors.white,
      ),
      const Text(
        "المجموعة والفوج",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      )
    ],
    [
      const Icon(
        FontAwesomeIcons.calendarAlt,
        color: Colors.white,
      ),
      const Text(
        "الجدول الزمني للإمتحانات",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      )
    ],
    [
      const Icon(
        FontAwesomeIcons.graduationCap,
        color: Colors.white,
      ),
      const Text(
        "علامات الامتحانات",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      )
    ],
    [
      const Icon(
        FontAwesomeIcons.pen,
        color: Colors.white,
      ),
      const Text(
        "التقييم المستمر",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      )
    ],
    [
      const Icon(
        Icons.percent,
        color: Colors.white,
      ),
      const Text(
        "النسبة المئوية للمقاييس",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      )
    ],
    [
      const Icon(
        FontAwesomeIcons.solidFolderClosed,
        color: Colors.white,
      ),
      const Text(
        "كشف النقاط",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      )
    ],
    [
      const Icon(
        FontAwesomeIcons.calculator,
        color: Colors.white,
      ),
      const Text(
        "الديون",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      )
    ],
    [
      const Icon(
        FontAwesomeIcons.solidFile,
        color: Colors.white,
      ),
      const Text(
        "عطلة أكاديمية",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      )
    ],
    [
      const Icon(
        FontAwesomeIcons.cashRegister,
        color: Colors.white,
      ),
      const Text(
        "تسجيلاتي",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      )
    ],
    [
      const Icon(
        Icons.local_restaurant,
        color: Colors.white,
      ),
      const Text(
        "الإطعام",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      )
    ],
    [
      const Icon(
        FontAwesomeIcons.listSquares,
        color: Colors.white,
      ),
      const Text(
        "خدمات أخرى",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      )
    ],
  ];

  int currentIndex = 0;
  double _angle = 0;
  double x = 0.0;
  double y = 0;
  bool isFont = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Widget> page = [
      PageHome(size: size, elements: elements),
      const FlipCardDemo(),
      Test2(
        c: (details) {
          setState(
            () {
              if (_angle.abs() >= 2 * pi) _angle = 0;
              // if(details.delta.dx<0) {
              _angle += -details.delta.dx * 0.01;
              // } else {
              //   _angle += details.delta.dx * 0.01;
              // }
              print(_angle);
              // _angle+= details.delta.dy*0.01;
              if (_angle.abs() >= pi / 2 && _angle.abs() < pi + pi / 2) {
                isFont = false;
              } else {
                isFont = true;
              }
            },
          );
        },
        g: (details) async {
          if (_angle.abs() > 0 && _angle.abs() < pi / 4) {
            for (double i = _angle.abs(); i > 0; i -= 0.1) {
              await Future.delayed(const Duration(milliseconds: 10));
              setState(() {
                _angle = i;
              });

              print(_angle);
              print(_angle);
            }
            setState(() {
              isFont = true;
            });
            // _angle = 0;
            // animateBack();
          } else if (_angle.abs() > pi / 4 && _angle.abs() < pi) {
            for (double i = _angle; i < pi; i += 0.1) {
              await Future.delayed(const Duration(milliseconds: 10));
              setState(() {
                _angle = i;
              });
              if(_angle.abs() >= pi / 2 && _angle.abs() < pi + pi / 2) {
                setState(() {
                isFont = false;
              });
              }
              print(_angle);
            }
            _angle = pi;
          }
          if (_angle.abs() < pi + pi / 4 && _angle.abs() > pi) {
            for (double i = _angle; i < pi; i += 0.1) {
              await Future.delayed(const Duration(milliseconds: 10));
              setState(() {
                _angle = pi;
              });
              print(_angle);
            }
            isFont = false;
          } else if (_angle.abs() >= pi + pi / 4 && _angle.abs() < pi * 2) {
            _angle = 0;
            isFont = true;
          }
        },
        angle: _angle,
        isFont: isFont,
      ),
    ];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Align(
            alignment: Alignment.topLeft,
            child: Text(
              "بوابة الطالب",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
            ),
          ),
          actions: const [Icon(Icons.person)],
          // backgroundColor: Colors.green,
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 3),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Color(0xff0c3350),
            ),
            child: HomeBottomNavigationBar(
                currentIndex: currentIndex,
                onTap: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                }),
          ),
        ),
        body: page[currentIndex],
      ),
      // centerTitle: true,
    );
  }

  void animateBack() async {
    while (_angle.abs() > 0.01) {
      await Future.delayed(const Duration(
          milliseconds:
              10)); //hna fkol iteration tahbas 10 milliseconds bach tban lharaQa
      // machi tatnafad b vitess li mathasch bli angle raha tatbadal
      setState(() {
        _angle *= 0.9; // تقليل تدريجي
      });
    }
    setState(() {
      _angle = 0;
      isFont = true;
    });
  }
}

