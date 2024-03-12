import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nonton_id/pages/home_page.dart';
import 'package:nonton_id/pages/tiket_page.dart';
import 'package:nonton_id/pages/bioskop_page.dart';
import 'package:nonton_id/pages/profile_page.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int pageIndex = 0;

  List<Widget> pages = [
    HomePage(),
    const TiketPage(),
    const BioskopPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        switchInCurve: Curves.easeIn,
        switchOutCurve: Curves.easeOut,
        transitionBuilder: (Widget child, Animation<double> animation) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
        child: pages[pageIndex],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        backgroundColor: const Color(0xFF1c1a29),
        itemCount: 4,
        tabBuilder: (int index, bool isActive) {
          final IconData iconData = index == 0
              ? CupertinoIcons.home
              : index == 1
                  ? CupertinoIcons.ticket
                  : index == 2
                      ? CupertinoIcons.film
                      : CupertinoIcons.profile_circled;
          final String label = index == 0
              ? 'Home'
              : index == 1
                  ? 'Ticket'
                  : index == 2
                      ? 'Bioskop'
                      : 'Profile';
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconData,
                size: 25,
                color: isActive
                    ? const Color.fromARGB(255, 233, 209, 27)
                    : Colors.white.withOpacity(0.5),
              ),
              Text(
                label,
                style: TextStyle(
                  color: isActive
                      ? const Color.fromARGB(255, 233, 209, 27)
                      : Colors.white.withOpacity(0.5),
                  fontSize: 12,
                ),
              ),
            ],
          );
        },
        activeIndex: pageIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        elevation: 0,
        onTap: (index) {
          setState(() {
            pageIndex = index;
          });
        },
        gapWidth: 8,
      ),
    );
  }
}
