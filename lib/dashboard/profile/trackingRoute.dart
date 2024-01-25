import 'package:flutter/material.dart';
import 'package:route_in_live/values/MyStyle.dart';

import '../../values/MyColor.dart';

class TrackingRoute extends StatefulWidget {
  const TrackingRoute({super.key});

  @override
  State<TrackingRoute> createState() => _TrackingRouteState();
}

class _TrackingRouteState extends State<TrackingRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.grey,
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: MyColor.white,
        title: Text(
          'Order / Tracking',
          style: MyStyle.tx14B.copyWith(
            fontSize: 14,
            // fontFamily: 'NotoSansKR-Regular',
          ),
        ),
        centerTitle: true,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: Divider(
            thickness: 1,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            color: MyColor.white,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      '2021.01.25',
                      style: MyStyle.tx12O.copyWith(
                        fontFamily: 'NotoSansKR-Regular',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.33,
                      ),
                    ),
                    Container(
                      height: 20,
                      padding: const EdgeInsets.symmetric(
                          vertical: 4.0, horizontal: 8.0),
                      margin: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: MyColor.purple,
                      ),
                      child: const Text(
                        'It\'s being delivered',
                        style: MyStyle.tx9,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/img3.png',
                      height: 72,
                      width: 72,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '11 kinds of vivid golf balls',
                          style: MyStyle.tx16B.copyWith(
                            fontFamily: 'NotoSansKR-Medium',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Text(
                          'Yellow 3 types / 1 pc.',
                          style: MyStyle.tx12B,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: '36,000',
                              style: MyStyle.tx14B.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'NotoSansKR-SemiBold',
                              ),
                            ),
                            TextSpan(
                              text: ' won',
                              style: MyStyle.tx13B.copyWith(
                                fontFamily: 'NotoSansKR-Regular',
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 32,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            border: Border.all(color: MyColor.black)),
                        child: const Center(
                          child: Text(
                            'Order cancellation',
                            style: MyStyle.tx13B,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Container(
                        height: 32,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          border: Border.all(color: MyColor.black),
                          color: MyColor.grey,
                        ),
                        child: const Center(
                          child: Text(
                            'Tracking',
                            style: MyStyle.tx13B,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            color: MyColor.white,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      '2021.01.20',
                      style: MyStyle.tx12O.copyWith(
                        fontFamily: 'NotoSansKR-Regular',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.33,
                      ),
                    ),
                    Container(
                      height: 20,
                      padding: const EdgeInsets.symmetric(
                          vertical: 4.0, horizontal: 8.0),
                      margin: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: MyColor.black.withOpacity(0.7),
                      ),
                      child: const Text(
                        'Delivery complete',
                        style: MyStyle.tx9,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/img3.png',
                      height: 72,
                      width: 72,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Muscle training. Rubber...',
                          style: MyStyle.tx16B.copyWith(
                            fontFamily: 'NotoSansKR-Medium',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Text(
                          'One thing',
                          style: MyStyle.tx12B,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: '4,800',
                              style: MyStyle.tx14B.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'NotoSansKR-SemiBold',
                              ),
                            ),
                            TextSpan(
                              text: ' won',
                              style: MyStyle.tx13B.copyWith(
                                fontFamily: 'NotoSansKR-Regular',
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 14,
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/img3.png',
                      height: 72,
                      width: 72,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Muscle training. Rubber...',
                          style: MyStyle.tx16B.copyWith(
                            fontFamily: 'NotoSansKR-Medium',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Text(
                          'One thing',
                          style: MyStyle.tx12B,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: '4,800',
                              style: MyStyle.tx14B.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'NotoSansKR-SemiBold',
                              ),
                            ),
                            TextSpan(
                              text: ' won',
                              style: MyStyle.tx13B.copyWith(
                                fontFamily: 'NotoSansKR-Regular',
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 32,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            border: Border.all(color: MyColor.black)),
                        child: const Center(
                          child: Text(
                            'Order cancellation',
                            style: MyStyle.tx13B,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Container(
                        height: 32,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          border: Border.all(color: MyColor.black),
                          color: MyColor.grey,
                        ),
                        child: const Center(
                          child: Text(
                            'Tracking',
                            style: MyStyle.tx13B,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            color: MyColor.white,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      '2021.01.25',
                      style: MyStyle.tx12O.copyWith(
                        fontFamily: 'NotoSansKR-Regular',
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.33,
                      ),
                    ),
                    Container(
                      height: 20,
                      padding: const EdgeInsets.symmetric(
                          vertical: 4.0, horizontal: 8.0),
                      margin: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: MyColor.purple,
                      ),
                      child: const Text(
                        'It\'s being delivered',
                        style: MyStyle.tx9,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/img3.png',
                      height: 72,
                      width: 72,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '11 kinds of vivid golf balls',
                          style: MyStyle.tx16B.copyWith(
                            fontFamily: 'NotoSansKR-Medium',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Text(
                          'Yellow 3 types / 1 pc.',
                          style: MyStyle.tx12B,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: '36,000',
                              style: MyStyle.tx14B.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'NotoSansKR-SemiBold',
                              ),
                            ),
                            TextSpan(
                              text: ' won',
                              style: MyStyle.tx13B.copyWith(
                                fontFamily: 'NotoSansKR-Regular',
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 32,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            border: Border.all(color: MyColor.black)),
                        child: const Center(
                          child: Text(
                            'Order cancellation',
                            style: MyStyle.tx13B,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Container(
                        height: 32,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          border: Border.all(color: MyColor.black),
                          color: MyColor.grey,
                        ),
                        child: const Center(
                          child: Text(
                            'Tracking',
                            style: MyStyle.tx13B,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
