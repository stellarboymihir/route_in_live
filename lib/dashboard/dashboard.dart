import 'package:flutter/material.dart';
import 'package:route_in_live/dashboard/feed/feed.dart';
import 'package:route_in_live/dashboard/home/home.dart';
import 'package:route_in_live/dashboard/profile/profile.dart';
import 'package:route_in_live/dashboard/store/store.dart';
import 'package:route_in_live/values/MyStyle.dart';

import '../values/MyColor.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int pageIndex = 0;

  List<Widget> pages = [
    const Home(),
    const Feed(),
    const Store(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            pageIndex = value;
          });
        },
        backgroundColor: MyColor.white,
        currentIndex: pageIndex,
        selectedItemColor: MyColor.orange,
        unselectedItemColor: MyColor.black.withOpacity(0.3),
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: Image.asset(
                'assets/icons/home.png',
                height: 25.75,
                width: 23.75,
              ),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: Image.asset(
                'assets/icons/homeo.png',
                height: 25.75,
                width: 23.75,
              ),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: Image.asset(
                'assets/icons/message.png',
                height: 25.75,
                width: 23.75,
              ),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: Image.asset(
                'assets/icons/messageo.png',
                height: 25.75,
                width: 23.75,
              ),
            ),
            label: "Feed",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: Image.asset(
                'assets/icons/store.png',
                height: 25.75,
                width: 23.75,
              ),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: Image.asset(
                'assets/icons/storeo.png',
                height: 25.75,
                width: 23.75,
              ),
            ),
            label: "Store",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: Image.asset(
                'assets/icons/profile.png',
                height: 25.75,
                width: 23.75,
              ),
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: Image.asset(
                'assets/icons/profileo.png',
                height: 25.75,
                width: 23.75,
              ),
            ),
            label: "Profile",
          ),
        ],
        selectedLabelStyle: MyStyle.tx10O.copyWith(
          fontFamily: 'NotoSansKR-Medium',
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelStyle: MyStyle.tx10.copyWith(
          fontWeight: FontWeight.w300,
          fontFamily: 'NotoSansKR-Regular',
          color: MyColor.black.withOpacity(0.3),
          decoration: TextDecoration.none,
        ),
      ),
      body: pages[pageIndex],
    );
  }
}
