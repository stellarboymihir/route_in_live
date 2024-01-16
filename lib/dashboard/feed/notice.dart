import 'package:flutter/material.dart';
import 'package:route_in_live/values/MyColor.dart';
import 'package:route_in_live/values/MyStyle.dart';

class Notice extends StatefulWidget {
  const Notice({super.key});

  @override
  State<Notice> createState() => _NoticeState();
}

class _NoticeState extends State<Notice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColor.white,
        title: Text(
          'Notice',
          style: MyStyle.tx14B.copyWith(
            fontSize: 14,
            fontFamily: 'NotoSansKR-Regular',
          ),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: Divider(
            thickness: 0,
            height: 0,
            color: MyColor.black.withOpacity(0.1),
          ),
        ),
      ),
      body: Container(
        color: MyColor.grey,
        child: Column(
          children: [
            //  1st Container
            Container(
              margin: const EdgeInsets.only(
                  left: 12.0, right: 12.0, top: 12.0, bottom: 0.0),
              height: 80,
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: MyColor.white,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Text(
                              'New Post Notification',
                              style: MyStyle.tx10O,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Run ',
                                style: MyStyle.tx14B.copyWith(
                                  fontSize: 14,
                                  fontFamily: 'NotoSansKR-SemiBold',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.33,
                                ),
                              ),
                              const WidgetSpan(
                                child: SizedBox(
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: 'posted a new post.',
                                style: MyStyle.tx14B.copyWith(
                                  fontSize: 14,
                                  fontFamily: 'NotoSansKR-Regular',
                                  color: MyColor.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          '1 day ago',
                          style: MyStyle.tx10.copyWith(
                            decoration: TextDecoration.none,
                            color: MyColor.black.withOpacity(0.5),
                            fontFamily: 'NotoSansKR-Regular',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/images/img23.png',
                    height: 64,
                    width: 64,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),

            //   2nd Container
            Container(
              margin: const EdgeInsets.only(
                  left: 12.0, right: 12.0, top: 8.0, bottom: 0.0),
              height: 80,
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: MyColor.white,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Text(
                              'New Post Notification',
                              style: MyStyle.tx10O,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Movesteady ',
                                style: MyStyle.tx14B.copyWith(
                                  fontSize: 14,
                                  fontFamily: 'NotoSansKR-SemiBold',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.33,
                                ),
                              ),
                              const WidgetSpan(
                                child: SizedBox(
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: 'posted a new post.',
                                style: MyStyle.tx14B.copyWith(
                                  fontSize: 14,
                                  fontFamily: 'NotoSansKR-Regular',
                                  color: MyColor.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          '1 day ago',
                          style: MyStyle.tx10.copyWith(
                            decoration: TextDecoration.none,
                            color: MyColor.black.withOpacity(0.5),
                            fontFamily: 'NotoSansKR-Regular',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/images/img15.png',
                    height: 64,
                    width: 64,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),

            //   3rd Container
            Container(
              margin: const EdgeInsets.only(
                  left: 12.0, right: 12.0, top: 8.0, bottom: 0.0),
              height: 80,
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: MyColor.white,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Text(
                              'New Post Notification',
                              style: MyStyle.tx10O,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Snowman ',
                                style: MyStyle.tx14B.copyWith(
                                  fontSize: 14,
                                  fontFamily: 'NotoSansKR-SemiBold',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.33,
                                ),
                              ),
                              const WidgetSpan(
                                child: SizedBox(
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: 'posted a new post.',
                                style: MyStyle.tx14B.copyWith(
                                  fontSize: 14,
                                  fontFamily: 'NotoSansKR-Regular',
                                  color: MyColor.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          '1 day ago',
                          style: MyStyle.tx10.copyWith(
                            decoration: TextDecoration.none,
                            color: MyColor.black.withOpacity(0.5),
                            fontFamily: 'NotoSansKR-Regular',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/images/img16.png',
                    height: 64,
                    width: 64,
                    fit: BoxFit.fill,
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
