import 'package:flutter/material.dart';
import 'package:route_in_live/constants/routes.dart';
import 'package:route_in_live/values/MyStyle.dart';

import '../../../values/MyColor.dart';

class TrackingRoute extends StatefulWidget {
  const TrackingRoute({super.key});

  @override
  State<TrackingRoute> createState() => _TrackingRouteState();
}

class _TrackingRouteState extends State<TrackingRoute> {
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
          // Delivered
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
                      child: InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return cancelDialog();
                              });
                        },
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
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, orderTrackingRoute);
                        },
                        child: Container(
                          height: 32,
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
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
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Delivering
          Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            width: MediaQuery.of(context).size.width,
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
                    const Spacer(),
                    Image.asset(
                      'assets/icons/more.png',
                      height: 24,
                      width: 24,
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
                      'assets/images/img46.png',
                      height: 72,
                      width: 72,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Muscle training. Rubber...',
                              style: MyStyle.tx16B.copyWith(
                                fontFamily: 'NotoSansKR-Medium',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return deleteDialog();
                                    });
                              },
                              child: Container(
                                height: 24,
                                padding: EdgeInsets.all(2.0),
                                margin: EdgeInsets.symmetric(
                                    horizontal: 6.0, vertical: 2.0),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: MyColor.black.withOpacity(0.1),
                                  ),
                                ),
                                child: Text(
                                  'Delete',
                                  style: MyStyle.tx12O.copyWith(
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
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
                      'assets/images/img1.png',
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
                          'Running shoes with com...',
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
                              text: '100,000',
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
                            'Request for return',
                            style: MyStyle.tx13B,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
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
                  ],
                ),
              ],
            ),
          ),

          // Cancel
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
                        color: MyColor.lemonyellow,
                      ),
                      child: const Text(
                        'Cancelled',
                        style: MyStyle.tx9,
                      ),
                    ),
                    const Spacer(),
                    Image.asset(
                      'assets/icons/more.png',
                      height: 24,
                      width: 24,
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
                      'assets/images/img47.png',
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
                          'Nike W Daybreak',
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
                              text: '100,000',
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
                  height: 5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget cancelDialog() {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      titlePadding: const EdgeInsets.only(top: 20),
      title: Text(
        'Order Cancellation',
        style: MyStyle.tx17B.copyWith(
          letterSpacing: 0.41,
        ),
        textAlign: TextAlign.center,
      ),
      // contentPadding:
      //     const EdgeInsets.only(top: 5, bottom: 10, right: 5, left: 5),
      actionsPadding:
          const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 0),
      actions: [
        const Center(
          child: Text(
            'Are you really going to cancel your order?',
            textAlign: TextAlign.center,
            style: MyStyle.tx13B,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        const Divider(
          height: 0,
          thickness: 0,
          indent: 0,
          endIndent: 0,
          color: Colors.grey,
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  // showDialog(
                  //     context: context,
                  //     builder: (BuildContext context) {
                  //       return failedDialog();
                  //     });
                },
                child: SizedBox(
                  // height: 30,
                  child: Text(
                    'Close',
                    style: MyStyle.tx17N.copyWith(
                      // fontSize: 1,
                      fontFamily: 'NotoSansKR-Regular',
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 44,
              child: VerticalDivider(
                width: 0,
                thickness: 0,
                indent: 0,
                endIndent: 0,
                color: Colors.grey,
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: SizedBox(
                  // height: 30,
                  child: Text(
                    'Cancel',
                    style: MyStyle.tx17P.copyWith(
                      // fontSize: 16,
                      fontFamily: 'NotoSansKR-Regular',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget deleteDialog() {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      titlePadding: const EdgeInsets.only(top: 20),
      title: Text(
        'Delete order history',
        style: MyStyle.tx17B.copyWith(
          letterSpacing: 0.41,
        ),
        textAlign: TextAlign.center,
      ),
      // contentPadding:
      //     const EdgeInsets.only(top: 5, bottom: 10, right: 5, left: 5),
      actionsPadding:
          const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 0),
      actions: [
        const Center(
          child: Text(
            'Are you sure you want to delete the order history?',
            textAlign: TextAlign.center,
            style: MyStyle.tx13B,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        const Divider(
          height: 0,
          thickness: 0,
          indent: 0,
          endIndent: 0,
          color: Colors.grey,
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  // showDialog(
                  //     context: context,
                  //     builder: (BuildContext context) {
                  //       return failedDialog();
                  //     });
                },
                child: SizedBox(
                  // height: 30,
                  child: Text(
                    'Close',
                    style: MyStyle.tx17N.copyWith(
                      // fontSize: 1,
                      fontFamily: 'NotoSansKR-Regular',
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 44,
              child: VerticalDivider(
                width: 0,
                thickness: 0,
                indent: 0,
                endIndent: 0,
                color: Colors.grey,
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  // showDialog(
                  //     context: context,
                  //     builder: (BuildContext context) {
                  //       return successDialog();
                  //     });
                },
                child: SizedBox(
                  // height: 30,
                  child: Text(
                    'Delete',
                    style: MyStyle.tx17P.copyWith(
                      // fontSize: 16,
                      fontFamily: 'NotoSansKR-Regular',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
