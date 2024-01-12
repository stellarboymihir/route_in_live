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
        currentIndex: pageIndex,
        selectedItemColor: MyColor.orange,
        unselectedItemColor: MyColor.black,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_sharp),
            label: "Feed",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: "Store",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
        ],
      ),
      body: pages[pageIndex],
    );
  }
}
