import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeBottomNavigationBar extends StatelessWidget {
  int currentIndex;
  final ValueChanged<int> onTap;
  HomeBottomNavigationBar(
      {super.key, required this.currentIndex, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: Colors.grey,
        fixedColor: Colors.white,
        showUnselectedLabels: true,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
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
            backgroundColor: Colors.transparent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "حسابي",
            backgroundColor: Colors.transparent,
          )
        ]);
  }
}
