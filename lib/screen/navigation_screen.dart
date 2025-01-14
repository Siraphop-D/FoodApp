
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/screen/favorite_screen.dart';
import 'package:foodapp/screen/home_screen.dart';
import 'package:foodapp/screen/post_screen.dart';
import 'package:foodapp/screen/profile_screen.dart';
import 'package:foodapp/screen/setting_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int pageIndex = 0;

  List<Widget> pages = [
    HomeScreen(),
    FavoriteScreen(),
    ProfileScreen(),
    SettingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: pages,
      ),
      floatingActionButton: SafeArea(
          child: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>PostScreen()));
        },
        child: Icon(
          Icons.add,
          size: 20,
          color: Colors.white,
        ),
        backgroundColor: Color.fromARGB(255, 0, 191, 99),
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: [
            CupertinoIcons.home,
            CupertinoIcons.heart,
            CupertinoIcons.profile_circled,
            CupertinoIcons.settings_solid,
          ],
          inactiveColor: Colors.black.withOpacity(0.5),
          activeColor: Color.fromARGB(255, 0, 191, 99),
          gapLocation: GapLocation.center,
          activeIndex: pageIndex,
          notchSmoothness: NotchSmoothness.softEdge,
          leftCornerRadius: 10,
          iconSize: 25,
          rightCornerRadius: 10,
          elevation: 0,
          onTap: (index) {
            setState(() {
              pageIndex = index;
            });
          }),
    );
  }
}
