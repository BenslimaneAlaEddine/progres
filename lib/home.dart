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
  double _angle=0;
  @override
  Widget build(BuildContext context) {
    print(Theme.of(context).useMaterial3);
    Size size = MediaQuery.of(context).size;
    List<Widget> page = [
      PageHome(size: size, elements: elements),
      FlipCardDemo(),
      Test2(c:(details){
    setState(() {
    _angle += details.delta.dx * 0.01;});}
      ,a: _angle,),
    ];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Align(
            alignment: Alignment.topLeft,
            child: Text(
              "بوابة الطالب",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 25),
            ),
          ),
          actions: const [Icon(Icons.person)],
          // backgroundColor: Colors.green,
        ),
        bottomNavigationBar: Padding(
          padding:
              const EdgeInsets.only(left: 12.0, right: 12.0,bottom: 3),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Color(0xff0c3350),
            ),
            child: HomeBottomNavigationBar(currentIndex: currentIndex, onTap: (index){
              setState(() {
                currentIndex=index;
              });
            }),
          ),
        ),
        body: page[currentIndex],
      ),
      // centerTitle: true,
    );
  }
}


