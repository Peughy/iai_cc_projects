import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iai_cc_projects/src/edima_gl3b/pages/history_edima_page.dart';
import 'package:iai_cc_projects/src/edima_gl3b/pages/home_page_edima.dart';
import 'package:iai_cc_projects/src/edima_gl3b/pages/pocket_edima_page.dart';
import 'package:iai_cc_projects/src/edima_gl3b/pages/profil_page_edima.dart';

class MainPageEdima extends StatefulWidget {
  const MainPageEdima({super.key});

  @override
  State<MainPageEdima> createState() => _MainPageEdimaState();
}

class _MainPageEdimaState extends State<MainPageEdima> {
  int _bottomNavIndex = 0;
  final mainColor = Color.fromARGB(255, 0, 162, 255);
  List<IconData> iconList = [
    FontAwesomeIcons.house,
    Icons.bar_chart_rounded,
    FontAwesomeIcons.getPocket,
    FontAwesomeIcons.solidCircleUser,
  ];

  final labels = <String>["Home", "History", "Pocket", "Me"];

  Widget buildTabIcon(int index) {
    final isActive = _bottomNavIndex == index;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconList[index],
          size: 24,
          color: isActive ? mainColor : Colors.grey,
        ),
        SizedBox(height: 4),
        Text(
          labels[index],
          style: TextStyle(
            fontSize: 14,
            color: isActive ? mainColor : Colors.grey,
          ),
        ),
      ],
    );
  }

  List<Widget> pages = [
    HomePageEdima(),
    HistoryEdimaPage(),
    PocketEdimaPage(),
    ProfilPageEdima(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 238, 238),
      body: pages[_bottomNavIndex],
      floatingActionButton: Container(
        height: 80,
        margin: EdgeInsets.only(bottom: 0),
        width: 80,
        decoration: BoxDecoration(color: mainColor, shape: BoxShape.circle),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.qr_code_scanner_rounded, size: 42, color: Colors.white),
            Text("Pay", style: TextStyle(fontSize: 16, color: Colors.white)),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: iconList.length,
        tabBuilder: (int index, bool isActive) {
          return buildTabIcon(index);
        },
        notchMargin: 0,
        leftCornerRadius: 16,
        rightCornerRadius: 16,
        height: 70,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        onTap: (index) => setState(() => _bottomNavIndex = index),
      ),
    );
  }
}
 