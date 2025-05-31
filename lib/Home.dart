import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // toolbarHeight: 150,
          title: const Align(
            alignment: Alignment.topLeft,
            child: Text(
              "بوابة الطالب",
            ),
          ),
          actions: const [Icon(Icons.person)],
          // backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: const EdgeInsets.only(right: 12.0, left: 12.0),
          child: Column(
            children: [
              ClipRRect(
                // clipBehavior: Clip.hardEdge,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60)),
                child: Image.asset(
                  "images/progres1.png",
                  fit: size.width > 400 ? BoxFit.fitWidth : BoxFit.fitHeight,
                  height: size.width > 400 ? 150 : 100,
                  width: size.width,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Expanded(
                child: LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  print(constraints.maxHeight);
                  return GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: size.width < 400 ? 2 : 3,
                        mainAxisExtent: 65,
                        mainAxisSpacing: 6,
                        crossAxisSpacing: 10
                        // childAspectRatio: 3,
                        ),
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.green.withBlue(910),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.solidFileText,
                              color: Colors.white,
                            ),
                            Text(
                              "التبرئة الالكترونية",
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.green.withBlue(910),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.tableList,
                              color: Colors.white,
                            ),
                            Text(
                              "الجدول الزمني",
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.green.withBlue(910),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.peopleGroup,
                              color: Colors.white,
                            ),
                            Text(
                              "المجموعة والفوج",
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.green.withBlue(910),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.calendarAlt,
                              color: Colors.white,
                            ),
                            Text(
                              "الجدول الزمني للإمتحانات",
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.green.withBlue(910),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.graduationCap,
                              color: Colors.white,
                            ),
                            Text(
                              "علامات الامتحانات",
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.green.withBlue(910),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.pen,
                              color: Colors.white,
                            ),
                            Text(
                              "التقييم المستمر",
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.green.withBlue(910),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.percent,
                              color: Colors.white,
                            ),
                            Text(
                              "النسبة المئوية للمقاييس",
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.green.withBlue(910),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.solidFolderClosed,
                              color: Colors.white,
                            ),
                            Text(
                              "كشف النقاط",
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.green.withBlue(910),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.calculator,
                              color: Colors.white,
                            ),
                            Text(
                              "الديون",
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.green.withBlue(910),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.solidFile,
                              color: Colors.white,
                            ),
                            Text(
                              "عطلة أكاديمية",
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.green.withBlue(910),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.cashRegister,
                              color: Colors.white,
                            ),
                            Text(
                              "تسجيلاتي",
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.green.withBlue(910),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                                Icons.local_restaurant,
                              color: Colors.white,
                            ),
                            Text(
                              "الإطعام",
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.green.withBlue(910),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.listSquares,
                              color: Colors.white,
                            ),
                            Text(
                              "خدمات أخرى",
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                }),
              ),
              const SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ),
      // centerTitle: true,
    );
  }
}
