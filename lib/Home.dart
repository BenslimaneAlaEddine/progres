import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

  @override
  Widget build(BuildContext context) {
    print(Theme.of(context).useMaterial3);
    Size size = MediaQuery.of(context).size;
    List<Widget> page = [
      Padding(
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
                fit: BoxFit.fitWidth,
                height: size.width > 400 ? 150 : 90,
                width: size.width,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Expanded(
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                print(constraints.maxHeight);
                return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: size.width < 400 ? 2 : 3,
                      mainAxisExtent: 65,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 10
                      // childAspectRatio: 3,
                      ),
                  itemCount: elements.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {},
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.green.withBlue(910),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: elements[index],
                          )),
                    );
                  },
                );
              }),
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
      const Center(
        child: Text("بطاقاتي"),
      ),
      const Center(
        child: Text("حسابي"),
      ),
    ];

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
        bottomNavigationBar: Padding(
          padding:
              const EdgeInsets.only(left: 12.0, right: 12.0,bottom: 3),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Color(0xff0c3350),
            ),
            child: BottomNavigationBar(
                onTap: (id) {
                  setState(() {
                    currentIndex = id;
                  });
                },
                currentIndex: currentIndex,
                type: BottomNavigationBarType.shifting,
                unselectedItemColor: Colors.grey,
                fixedColor: Colors.white,
                showUnselectedLabels: true,
                selectedLabelStyle:
                    const TextStyle(fontWeight: FontWeight.bold),
                selectedFontSize: 20,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home_filled),
                    label: "الرئيسية",
                    backgroundColor: Colors.transparent,
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.idCard),
                    label: "بطاقاتي",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.idCard),
                    label: "حسابي",
                  )
                ]),
          ),
        ),
        body: page[currentIndex],
      ),
      // centerTitle: true,
    );
  }
}
