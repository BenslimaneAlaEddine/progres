import 'package:flutter/material.dart';

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
          padding: const EdgeInsets.only(right: 8.0, left: 8.0),
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
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
                const SizedBox(height: 8,),
              ],
            ),
          ),
        ),
      ),
      // centerTitle: true,
    );
  }
}
