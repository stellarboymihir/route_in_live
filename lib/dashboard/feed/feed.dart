import 'package:flutter/material.dart';
import 'package:route_in_live/dashboard/feed/FeedScreen/feedScreen.dart';
import 'package:route_in_live/dashboard/feed/MyScreen/myScreen.dart';
import 'package:route_in_live/values/MyStyle.dart';

import '../../values/MyColor.dart';

class Feed extends StatefulWidget {
  const Feed({super.key});

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
          // AppBar
          appBar: AppBar(
            shape: Border(
              bottom: BorderSide(
                color: MyColor.black.withOpacity(0.1),
                width: 1,
              ),
            ),
            leading: IconButton(
              icon: const Icon(Icons.search, size: 24),
              onPressed: () {},
            ),
            title: Text(
              'Feed',
              textAlign: TextAlign.center,
              style: MyStyle.tx14B.copyWith(fontSize: 14),
            ),
            elevation: 0,
            centerTitle: true,
            automaticallyImplyLeading: false,
            actions: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 8.0, top: 8.0, right: 4.0, bottom: 8.0),
                child: Image.asset(
                  'assets/icons/alert.png',
                  height: 24,
                  width: 24,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 4.0, top: 8.0, right: 8.0, bottom: 8.0),
                child: Image.asset(
                  'assets/icons/cart.png',
                  height: 24,
                  width: 24,
                ),
              ),
            ],
          ),
          body: Column(
            children: [
              //TabController
              TabBar(
                labelColor: MyColor.orange,
                labelStyle: MyStyle.tx12O.copyWith(
                  fontFamily: 'NotoSansKR-Medium',
                  fontWeight: FontWeight.w700,
                ),
                dividerColor: MyColor.white,
                indicatorColor: MyColor.orange,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(color: MyColor.orange),
                ),
                unselectedLabelColor: MyColor.orange.withOpacity(0.3),
                tabs: [
                  Tab(
                    text: 'Feed',
                  ),
                  Tab(
                    text: 'My',
                  ),
                ],
              ),

              //TabBar View
              Expanded(
                child: TabBarView(
                  children: [
                    //For Feed View in TabBar
                    FeedScreen(),

                    //For my view in TabBar
                    MyScreen(),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
