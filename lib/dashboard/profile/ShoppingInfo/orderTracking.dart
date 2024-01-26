import 'package:flutter/material.dart';
import 'package:route_in_live/values/MyContainer.dart';
import 'package:route_in_live/values/MyStyle.dart';

import '../../../values/MyColor.dart';

class OrderTracking extends StatefulWidget {
  const OrderTracking({super.key});

  @override
  State<OrderTracking> createState() => _OrderTrackingState();
}

class _OrderTrackingState extends State<OrderTracking> {
  List<bool> isSelected = [false, false, false];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
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
          // Being Delivered
          Container(
            height: 128,
            color: MyColor.white,
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'It\'s being delivered',
                  style: MyStyle.tx17B.copyWith(
                    fontFamily: 'NotoSansKR-SemiBold',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '323232155353535',
                  style: MyStyle.tx11.copyWith(
                    fontFamily: 'NotoSansKR-Medium',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyContainer(
                      index: 0,
                      text: 'Ready for Delivery',
                      textColor:
                          selectedIndex == 0 ? MyColor.white : MyColor.black,
                      onTap: (index) {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      color: selectedIndex == 0
                          ? MyColor.orange
                          : MyColor.black.withOpacity(0.1),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Divider(
                          thickness: 1,
                        ),
                      ),
                    ),
                    MyContainer(
                      index: 1,
                      text: 'It\'s being delivered',
                      textColor:
                          selectedIndex == 1 ? MyColor.white : MyColor.black,
                      onTap: (index) {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      color: selectedIndex == 1
                          ? MyColor.orange
                          : MyColor.black.withOpacity(0.1),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Divider(
                          thickness: 1,
                        ),
                      ),
                    ),
                    MyContainer(
                      index: 2,
                      text: 'Delivery complete',
                      textColor:
                          selectedIndex == 2 ? MyColor.white : MyColor.black,
                      onTap: (index) {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      color: selectedIndex == 2
                          ? MyColor.orange
                          : MyColor.black.withOpacity(0.1),
                    ),
                  ],
                ),
              ],
            ),
          ),

          //Types of balls
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
                        const SizedBox(
                          height: 10,
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
                      child: InkWell(
                        onTap: () {
                          // showDialog(
                          //     context: context,
                          //     builder: (BuildContext context) {
                          //       return cancelDialog();
                          //     });
                        },
                        child: Container(
                          height: 32,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              border: Border.all(color: MyColor.black)),
                          child: const Center(
                            child: Text(
                              'Request for return',
                              style: MyStyle.tx13B,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          // Navigator.pushNamed(context, orderTrackingRoute);
                        },
                        child: Container(
                          height: 32,
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                            color: MyColor.grey,
                          ),
                          child: const Center(
                            child: Text(
                              'Request an exchange',
                              style: MyStyle.tx13B,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),

          //   local Info
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            color: MyColor.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Delivery location information',
                    style: MyStyle.tx14B.copyWith(
                      fontSize: 14,
                      fontFamily: 'NotoSansKR-Regular',
                    ),
                  ),
                ),
                // SizedBox(
                //   height: 10,
                // ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Room 396, 1701, Seocho-daero, Seocho-gu, Seoul, Republic of Korea',
                    style: MyStyle.tx14B.copyWith(
                      fontSize: 14,
                      fontFamily: 'NotoSansKR-Regular',
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
