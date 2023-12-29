import 'package:flutter/material.dart';
import 'package:route_in_live/values/MyColor.dart';
import 'package:route_in_live/values/MyStyle.dart';

class LiveBroadcast extends StatefulWidget {
  const LiveBroadcast({super.key});

  @override
  State<LiveBroadcast> createState() => _LiveBroadcastState();
}

class _LiveBroadcastState extends State<LiveBroadcast> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/live.png',
                fit: BoxFit.fill,
                width: width,
                height: height,
                // filterQuality: FilterQuality.low,
                // opacity: const AlwaysStoppedAnimation(0.5),
              ),
              Positioned(
                top: 40,
                left: 10,
                right: 10,
                child: Column(
                  children: [
                    Container(
                      width: width,
                      margin: const EdgeInsets.all(8.0),
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: MyColor.orange.withOpacity(0.25),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Let\'s play golf after knowing it!',
                            textAlign: TextAlign.center,
                            style: MyStyle.tx14W.copyWith(
                              fontWeight: FontWeight.w700,
                              fontSize: 13,
                            ),
                          ),
                          Text(
                            'Pak Se-ri',
                            style: MyStyle.tx10.copyWith(
                              fontFamily: 'NotoSansKR-Regular',
                              decoration: TextDecoration.none,
                              color: MyColor.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          // padding: const EdgeInsets.all(8.0),
                          // margin: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: MyColor.white.withOpacity(0.20),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/icons/people.png',
                                height: 16,
                                width: 16,
                              ),
                              RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                    text: '1,000',
                                    style: MyStyle.tx11.copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'NotoSansKR-Regular',
                                      color: MyColor.white,
                                    ),
                                  ),
                                  const WidgetSpan(
                                    child: SizedBox(
                                      width: 5,
                                    ),
                                  ),
                                  const TextSpan(
                                      text: 'Viewers', style: MyStyle.tx10W),
                                ]),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          margin: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: MyColor.white.withOpacity(0.20),
                          ),
                          child: const Text(
                            'Quality - Automatic (1080p)',
                            style: MyStyle.tx10W,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            margin: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: MyColor.dred),
                            child: Text(
                              'Get out',
                              textAlign: TextAlign.center,
                              style: MyStyle.tx10W.copyWith(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 10,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(8.0),
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: MyColor.yellowO,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Chicken lover sponsored ',
                            textAlign: TextAlign.center,
                            style: MyStyle.tx12B.copyWith(
                                color: MyColor.white,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Montserrat-Medium'),
                          ),
                          Text(
                            '100 Points',
                            textAlign: TextAlign.center,
                            style: MyStyle.tx12B.copyWith(
                                color: MyColor.orange,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'NotoSansKR-Medium'),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(8.0),
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: MyColor.yellowO,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Aigo sponsored ',
                            textAlign: TextAlign.center,
                            style: MyStyle.tx12B.copyWith(
                                color: MyColor.white,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Montserrat-Medium'),
                          ),
                          Text(
                            '50 Points',
                            textAlign: TextAlign.center,
                            style: MyStyle.tx12B.copyWith(
                                color: MyColor.orange,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'NotoSansKR-Medium'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
