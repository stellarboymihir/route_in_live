import 'package:flutter/material.dart';
import 'package:route_in_live/dashboard/feed/FeedScreen/allScreen.dart';
import 'package:route_in_live/dashboard/feed/FeedScreen/followingScreen.dart';
import 'package:route_in_live/dashboard/feed/FeedScreen/likeScreen.dart';

import '../../../constants/routes.dart';
import '../../../values/MyColor.dart';
import '../../../values/MyStyle.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  var tabMenuChange = 'Like';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: MyColor.grey,
        child: Column(
          children: [
            Row(
              children: [
                // 1st Container
                InkWell(
                  onTap: () {
                    setState(() {
                      tabMenuChange = 'All';
                      // ? MyColor.orange
                      // : MyColor.black.withOpacity(0.05);
                      print('All is pressed');
                    });
                    // Navigator.pushNamed(context, allScreenRoute);
                    const AllScreen();
                    print('It is opeing');
                  },
                  child: Container(
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: tabMenuChange == 'All'
                          ? MyColor.orange
                          : MyColor.black.withOpacity(0.05),
                    ),
                    height: 28,
                    width: 82,
                    child: Center(
                      child: Text(
                        'All',
                        style: MyStyle.tx12W.copyWith(
                          color: tabMenuChange == 'All'
                              ? MyColor.white
                              : MyColor.black.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ),
                ),

                //2nd Container
                InkWell(
                  onTap: () {
                    setState(() {
                      tabMenuChange = 'Following';
                      // ? MyColor.orange
                      // : MyColor.black.withOpacity(0.05);
                      print('Following is pressed');
                    });
                    // Navigator.pushNamed(context, followingScreenRoute);
                    const FollowingScreen();
                  },
                  child: Container(
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: tabMenuChange == 'Following'
                          ? MyColor.orange
                          : MyColor.black.withOpacity(0.05),
                    ),
                    height: 28,
                    width: 82,
                    child: Center(
                      child: Text(
                        'Following',
                        style: MyStyle.tx12B.copyWith(
                          color: tabMenuChange == 'Following'
                              ? MyColor.white
                              : MyColor.black.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ),
                ),

                //3rd Container
                InkWell(
                  onTap: () {
                    setState(() {
                      tabMenuChange = 'Like';
                      // ? MyColor.orange
                      // : MyColor.black.withOpacity(0.05);
                      print('Like is pressed');
                    });
                    // Navigator.pushNamed(context, likeScreenRoute);
                    const LikeScreen();
                  },
                  child: Container(
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: tabMenuChange == 'Like'
                          ? MyColor.orange
                          : MyColor.black.withOpacity(0.05),
                    ),
                    height: 28,
                    width: 82,
                    child: Center(
                      child: Text(
                        'Like',
                        style: MyStyle.tx12B.copyWith(
                          color: tabMenuChange == 'Like'
                              ? MyColor.white
                              : MyColor.black.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            tabMenuChange == 'All'
                ? const Expanded(child: AllScreen())
                : const SizedBox(),
            tabMenuChange == 'Following'
                ? const Expanded(child: FollowingScreen())
                : const SizedBox(),
            tabMenuChange == 'Like'
                ? const Expanded(child: LikeScreen())
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
