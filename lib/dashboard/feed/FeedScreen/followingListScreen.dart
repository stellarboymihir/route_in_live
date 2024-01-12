import 'package:flutter/material.dart';
import 'package:route_in_live/values/MyColor.dart';
import 'package:route_in_live/values/MyStyle.dart';

class FollowingListScreen extends StatefulWidget {
  const FollowingListScreen({super.key});

  @override
  State<FollowingListScreen> createState() => _FollowingListScreenState();
}

class _FollowingListScreenState extends State<FollowingListScreen> {
  var isFollowingPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Following List',
          style: MyStyle.tx14B.copyWith(
            fontSize: 14,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: MyColor.grey,
        child: Column(
          children: [
            //1st Container
            Container(
              padding: const EdgeInsets.all(2.0),
              margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: MyColor.white,
              ),
              height: 64,
              width: 351,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/img7.png',
                      height: 48,
                      width: 48,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Run',
                      style: MyStyle.tx14B.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'NotoSansKR-Regular',
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isFollowingPressed = !isFollowingPressed;
                      });
                    },
                    child: isFollowingPressed
                        ? Container(
                            height: 28,
                            width: 68,
                            padding: const EdgeInsets.all(2.0),
                            margin: const EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border:
                                  Border.all(width: 1, color: MyColor.purple),
                              color: MyColor.white,
                            ),
                            child: Center(
                              child: Text(
                                'Follow',
                                style: MyStyle.tx12W.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: MyColor.purple,
                                  fontFamily: 'NotoSansKR-Thin',
                                ),
                              ),
                            ),
                          )
                        : Container(
                            height: 28,
                            width: 68,
                            padding: const EdgeInsets.all(2.0),
                            margin: const EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border:
                                  Border.all(width: 1, color: MyColor.purple),
                              color: MyColor.purple,
                            ),
                            child: Center(
                              child: Text(
                                'Following',
                                style: MyStyle.tx12W.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: MyColor.white,
                                  fontFamily: 'NotoSansKR-Thin',
                                ),
                              ),
                            ),
                          ),
                  ),
                ],
              ),
            ),

            //2nd Container
            Container(
              padding: const EdgeInsets.all(2.0),
              margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: MyColor.white,
              ),
              height: 64,
              width: 351,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/img12.png',
                      height: 48,
                      width: 48,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Coco',
                      style: MyStyle.tx14B.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'NotoSansKR-Regular',
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isFollowingPressed = !isFollowingPressed;
                      });
                    },
                    child: isFollowingPressed
                        ? Container(
                            height: 28,
                            width: 68,
                            padding: const EdgeInsets.all(2.0),
                            margin: const EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border:
                                  Border.all(width: 1, color: MyColor.purple),
                              color: MyColor.white,
                            ),
                            child: Center(
                              child: Text(
                                'Follow',
                                style: MyStyle.tx12W.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: MyColor.purple,
                                  fontFamily: 'NotoSansKR-Thin',
                                ),
                              ),
                            ),
                          )
                        : Container(
                            height: 28,
                            width: 68,
                            padding: const EdgeInsets.all(2.0),
                            margin: const EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border:
                                  Border.all(width: 1, color: MyColor.purple),
                              color: MyColor.purple,
                            ),
                            child: Center(
                              child: Text(
                                'Following',
                                style: MyStyle.tx12W.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: MyColor.white,
                                  fontFamily: 'NotoSansKR-Thin',
                                ),
                              ),
                            ),
                          ),
                  ),
                ],
              ),
            ),

            // 3rd Container
            Container(
              padding: const EdgeInsets.all(2.0),
              margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: MyColor.white,
              ),
              height: 64,
              width: 351,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/img13.png',
                      height: 48,
                      width: 48,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Chicken Chicken',
                      style: MyStyle.tx14B.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'NotoSansKR-Regular',
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isFollowingPressed = !isFollowingPressed;
                      });
                    },
                    child: isFollowingPressed
                        ? Container(
                            height: 28,
                            width: 68,
                            padding: const EdgeInsets.all(2.0),
                            margin: const EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border:
                                  Border.all(width: 1, color: MyColor.purple),
                              color: MyColor.white,
                            ),
                            child: Center(
                              child: Text(
                                'Follow',
                                style: MyStyle.tx12W.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: MyColor.purple,
                                  fontFamily: 'NotoSansKR-Thin',
                                ),
                              ),
                            ),
                          )
                        : Container(
                            height: 28,
                            width: 68,
                            padding: const EdgeInsets.all(2.0),
                            margin: const EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border:
                                  Border.all(width: 1, color: MyColor.purple),
                              color: MyColor.purple,
                            ),
                            child: Center(
                              child: Text(
                                'Following',
                                style: MyStyle.tx12W.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: MyColor.white,
                                  fontFamily: 'NotoSansKR-Thin',
                                ),
                              ),
                            ),
                          ),
                  ),
                ],
              ),
            ),

            //  4th Container
            Container(
              padding: const EdgeInsets.all(2.0),
              margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: MyColor.white,
              ),
              // height: 64,
              // width: 351,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/img14.png',
                      height: 48,
                      width: 48,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Master',
                      style: MyStyle.tx14B.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'NotoSansKR-Regular',
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isFollowingPressed = !isFollowingPressed;
                      });
                    },
                    child: isFollowingPressed
                        ? Container(
                            height: 28,
                            width: 68,
                            padding: const EdgeInsets.all(2.0),
                            margin: const EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border:
                                  Border.all(width: 1, color: MyColor.purple),
                              color: MyColor.white,
                            ),
                            child: Center(
                              child: Text(
                                'Follow',
                                style: MyStyle.tx12W.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: MyColor.purple,
                                  fontFamily: 'NotoSansKR-Thin',
                                ),
                              ),
                            ),
                          )
                        : Container(
                            height: 28,
                            width: 68,
                            padding: const EdgeInsets.all(2.0),
                            margin: const EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border:
                                  Border.all(width: 1, color: MyColor.purple),
                              color: MyColor.purple,
                            ),
                            child: Center(
                              child: Text(
                                'Following',
                                style: MyStyle.tx12W.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: MyColor.white,
                                  fontFamily: 'NotoSansKR-Thin',
                                ),
                              ),
                            ),
                          ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
