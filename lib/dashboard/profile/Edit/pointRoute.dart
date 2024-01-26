import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:route_in_live/constants/routes.dart';
import 'package:route_in_live/values/MyStyle.dart';

import '../../../values/MyColor.dart';

class PointRoute extends StatefulWidget {
  const PointRoute({super.key});

  @override
  State<PointRoute> createState() => _PointRouteState();
}

class _PointRouteState extends State<PointRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Point',
          style: MyStyle.tx14W
              .copyWith(color: Colors.black, fontFamily: 'NotoSansKR-Regular'),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: Divider(
            thickness: 0,
            color: MyColor.black.withOpacity(0.1),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: MyColor.black.withOpacity(0.05),
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
            height: 120,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'My point',
                  textAlign: TextAlign.start,
                  style: MyStyle.tx14B.copyWith(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '1,000',
                        style: MyStyle.tx16W.copyWith(
                          fontFamily: 'NotoSansKR-Regular',
                          fontWeight: FontWeight.w700,
                          color: MyColor.purple,
                        ),
                      ),
                      TextSpan(
                        text: ' Points',
                        style: MyStyle.tx14W.copyWith(
                          color: MyColor.black.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, withdrawalAppRoute);
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          color: MyColor.lemonyellow,
                          height: 32,
                          child: Center(
                            child: Text(
                              'Withdrawal application',
                              style: MyStyle.tx14W.copyWith(
                                fontSize: 13,
                              ),
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
                          pointSheet();
                        },
                        child: Container(
                          color: MyColor.purple,
                          height: 32,
                          child: Center(
                            child: Text(
                              'Charging',
                              style: MyStyle.tx14W.copyWith(
                                fontSize: 13,
                              ),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Date and Time',
                  style: MyStyle.tx14B.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'How to use it',
                  style: MyStyle.tx14B.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Point',
                  style: MyStyle.tx14B.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '2020.11.27 01:12(Fri)',
                style: MyStyle.tx12B,
              ),
              SizedBox(
                height: 24,
                child: VerticalDivider(
                  thickness: 1,
                  color: MyColor.black.withOpacity(0.1),
                ),
              ),
              const Text(
                'Acquired (quiz)',
                style: MyStyle.tx12B,
              ),
              SizedBox(
                height: 24,
                child: VerticalDivider(
                  thickness: 1,
                  color: MyColor.black.withOpacity(0.1),
                ),
              ),
              const Text(
                '+ 100 points ',
                textAlign: TextAlign.center,
                style: MyStyle.tx12B,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '2020.11.27 01:12(Fri)',
                style: MyStyle.tx12B,
              ),
              SizedBox(
                height: 24,
                child: VerticalDivider(
                  thickness: 1,
                  color: MyColor.black.withOpacity(0.1),
                ),
              ),
              const Text(
                'Acquired (quiz)',
                style: MyStyle.tx12B,
              ),
              SizedBox(
                height: 24,
                child: VerticalDivider(
                  thickness: 1,
                  color: MyColor.black.withOpacity(0.1),
                ),
              ),
              const Text(
                '+ 100 points ',
                textAlign: TextAlign.center,
                style: MyStyle.tx12B,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '2020.11.27 01:12(Fri)',
                style: MyStyle.tx12B,
              ),
              SizedBox(
                height: 24,
                child: VerticalDivider(
                  thickness: 1,
                  color: MyColor.black.withOpacity(0.1),
                ),
              ),
              const Text(
                'Acquired (quiz)',
                style: MyStyle.tx12B,
              ),
              SizedBox(
                height: 24,
                child: VerticalDivider(
                  thickness: 1,
                  color: MyColor.black.withOpacity(0.1),
                ),
              ),
              const Text(
                '+ 100 points ',
                textAlign: TextAlign.center,
                style: MyStyle.tx12B,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '2020.11.27 01:12(Fri)',
                style: MyStyle.tx12B,
              ),
              SizedBox(
                height: 24,
                child: VerticalDivider(
                  thickness: 1,
                  color: MyColor.black.withOpacity(0.1),
                ),
              ),
              const Text(
                'Acquired (quiz)',
                style: MyStyle.tx12B,
              ),
              SizedBox(
                height: 24,
                child: VerticalDivider(
                  thickness: 1,
                  color: MyColor.black.withOpacity(0.1),
                ),
              ),
              const Text(
                '+ 100 points ',
                textAlign: TextAlign.center,
                style: MyStyle.tx12B,
              ),
            ],
          ),

          // 200 points
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '2020.11.27 01:12(Fri)',
                style: MyStyle.tx12B,
              ),
              SizedBox(
                height: 24,
                child: VerticalDivider(
                  thickness: 1,
                  color: MyColor.black.withOpacity(0.1),
                ),
              ),
              const Text(
                'Acquired (quiz)',
                style: MyStyle.tx12B,
              ),
              SizedBox(
                height: 24,
                child: VerticalDivider(
                  thickness: 1,
                  color: MyColor.black.withOpacity(0.1),
                ),
              ),
              const Text(
                '+ 200 points ',
                textAlign: TextAlign.center,
                style: MyStyle.tx12B,
              ),
            ],
          ),

          //500 Points
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '2020.11.27 01:12(Fri)',
                style: MyStyle.tx12B,
              ),
              SizedBox(
                height: 24,
                child: VerticalDivider(
                  thickness: 1,
                  color: MyColor.black.withOpacity(0.1),
                ),
              ),
              const Text(
                'Acquired (quiz)',
                style: MyStyle.tx12B,
              ),
              SizedBox(
                height: 24,
                child: VerticalDivider(
                  thickness: 1,
                  color: MyColor.black.withOpacity(0.1),
                ),
              ),
              const Text(
                '+ 500 points ',
                textAlign: TextAlign.center,
                style: MyStyle.tx12B,
              ),
            ],
          ),

          //  -5,000 Points
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '2020.11.27 01:12(Fri)',
                style: MyStyle.tx12B,
              ),
              SizedBox(
                height: 24,
                width: 20,
                child: VerticalDivider(
                  thickness: 1,
                  color: MyColor.black.withOpacity(0.1),
                ),
              ),
              const Text(
                'Withdrawal',
                style: MyStyle.tx12B,
              ),
              SizedBox(
                height: 24,
                width: 20,
                child: VerticalDivider(
                  thickness: 1,
                  color: MyColor.black.withOpacity(0.1),
                ),
              ),
              const Text(
                '-5,000 points ',
                textAlign: TextAlign.center,
                style: MyStyle.tx12B,
              ),
            ],
          ),

          //   3000 Points
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '2020.11.27 01:12(Fri)',
                style: MyStyle.tx12B,
              ),
              SizedBox(
                height: 24,
                width: 20,
                child: VerticalDivider(
                  thickness: 1,
                  color: MyColor.black.withOpacity(0.1),
                ),
              ),
              const Text(
                'Charging',
                style: MyStyle.tx12B,
              ),
              SizedBox(
                height: 24,
                width: 20,
                child: VerticalDivider(
                  thickness: 1,
                  color: MyColor.black.withOpacity(0.1),
                ),
              ),
              const Text(
                '+ 3,000 points ',
                textAlign: TextAlign.center,
                style: MyStyle.tx12B,
              ),
            ],
          ),

          //   100 Points
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '2020.11.27 01:12(Fri)',
                style: MyStyle.tx12B,
              ),
              SizedBox(
                height: 24,
                child: VerticalDivider(
                  thickness: 1,
                  color: MyColor.black.withOpacity(0.1),
                ),
              ),
              const Text(
                'Acquired (quiz)',
                style: MyStyle.tx12B,
              ),
              SizedBox(
                height: 24,
                child: VerticalDivider(
                  thickness: 1,
                  color: MyColor.black.withOpacity(0.1),
                ),
              ),
              const Text(
                '+ 100 points ',
                textAlign: TextAlign.center,
                style: MyStyle.tx12B,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '2020.11.27 01:12(Fri)',
                style: MyStyle.tx12B,
              ),
              SizedBox(
                height: 24,
                child: VerticalDivider(
                  thickness: 1,
                  color: MyColor.black.withOpacity(0.1),
                ),
              ),
              const Text(
                'Acquired (quiz)',
                style: MyStyle.tx12B,
              ),
              SizedBox(
                height: 24,
                child: VerticalDivider(
                  thickness: 1,
                  color: MyColor.black.withOpacity(0.1),
                ),
              ),
              const Text(
                '+ 100 points ',
                textAlign: TextAlign.center,
                style: MyStyle.tx12B,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '2020.11.27 01:12(Fri)',
                style: MyStyle.tx12B,
              ),
              SizedBox(
                height: 24,
                child: VerticalDivider(
                  thickness: 1,
                  color: MyColor.black.withOpacity(0.1),
                ),
              ),
              const Text(
                'Acquired (quiz)',
                style: MyStyle.tx12B,
              ),
              SizedBox(
                height: 24,
                child: VerticalDivider(
                  thickness: 1,
                  color: MyColor.black.withOpacity(0.1),
                ),
              ),
              const Text(
                '+ 100 points ',
                textAlign: TextAlign.center,
                style: MyStyle.tx12B,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '2020.11.27 01:12(Fri)',
                style: MyStyle.tx12B,
              ),
              SizedBox(
                height: 24,
                child: VerticalDivider(
                  thickness: 1,
                  color: MyColor.black.withOpacity(0.1),
                ),
              ),
              const Text(
                'Acquired (quiz)',
                style: MyStyle.tx12B,
              ),
              SizedBox(
                height: 24,
                child: VerticalDivider(
                  thickness: 1,
                  color: MyColor.black.withOpacity(0.1),
                ),
              ),
              const Text(
                '+ 100 points ',
                textAlign: TextAlign.center,
                style: MyStyle.tx12B,
              ),
            ],
          ),
        ],
      ),
    );
  }

  void pointSheet() {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(16),
          topLeft: Radius.circular(16),
        ),
      ),
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.81,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 12.0, horizontal: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Point Purchase',
                      style: MyStyle.tx16B.copyWith(
                        fontFamily: 'NotoSansKR-Medium',
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/icons/Circle.png',
                        height: 24,
                        width: 24,
                        color: MyColor.black,
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                'assets/icons/point.png',
                height: 72,
                width: 136,
              ),
              Text(
                'Point',
                style: MyStyle.tx14B.copyWith(
                  fontSize: 13,
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '1,400',
                      style: MyStyle.tx20B.copyWith(
                        fontSize: 18,
                      ),
                    ),
                    TextSpan(
                      text: ' Points',
                      style: MyStyle.tx16B.copyWith(
                        color: MyColor.black.withOpacity(0.5),
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                  //Interactive toast, set [isIgnoring] false.
                  showToastWidget(
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 28.0, vertical: 10.0),
                      decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          color: MyColor.white),
                      child: Text(
                        'Point charging is completed.',
                        style: MyStyle.tx14B.copyWith(
                          fontSize: 14,
                          fontFamily: 'NotoSansKR-Regular',
                        ),
                      ),
                    ),
                    position: const StyledToastPosition(
                        align: Alignment.bottomCenter),
                    context: context,
                    isIgnoring: false,
                    duration: const Duration(seconds: 4),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: MyColor.purple,
                  ),
                  height: 56,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '1,400',
                              style: MyStyle.tx16W.copyWith(
                                  fontWeight: FontWeight.w700, fontSize: 13),
                            ),
                            TextSpan(
                              text: ' Points',
                              style: MyStyle.tx14W.copyWith(
                                fontFamily: 'NotoSansKR-Regular',
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '1,300',
                              style: MyStyle.tx16W.copyWith(
                                  fontWeight: FontWeight.w600, fontSize: 13),
                            ),
                            TextSpan(
                              text: ' won',
                              style: MyStyle.tx14W.copyWith(
                                fontFamily: 'NotoSansKR-Regular',
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                  //Interactive toast, set [isIgnoring] false.
                  showToastWidget(
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 28.0, vertical: 10.0),
                      margin: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 2,
                      ),
                      height: 56,
                      decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          color: MyColor.white),
                      child: Text(
                        'Point charging is completed.',
                        style: MyStyle.tx14B.copyWith(
                          fontSize: 14,
                          fontFamily: 'NotoSansKR-Regular',
                        ),
                      ),
                    ),
                    position: const StyledToastPosition(
                        align: Alignment.bottomCenter),
                    context: context,
                    isIgnoring: false,
                    duration: const Duration(seconds: 4),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: MyColor.purple,
                  ),
                  height: 56,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '3,000',
                              style: MyStyle.tx16W.copyWith(
                                  fontWeight: FontWeight.w700, fontSize: 13),
                            ),
                            TextSpan(
                              text: ' Points',
                              style: MyStyle.tx14W.copyWith(
                                fontFamily: 'NotoSansKR-Regular',
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '3,900',
                              style: MyStyle.tx16W.copyWith(
                                  fontWeight: FontWeight.w600, fontSize: 13),
                            ),
                            TextSpan(
                              text: ' won',
                              style: MyStyle.tx14W.copyWith(
                                fontFamily: 'NotoSansKR-Regular',
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                  //Interactive toast, set [isIgnoring] false.
                  showToastWidget(
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 28.0, vertical: 10.0),
                      margin: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 2,
                      ),
                      height: 56,
                      decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          color: MyColor.white),
                      child: Text(
                        'Point charging is completed.',
                        style: MyStyle.tx14B.copyWith(
                          fontSize: 14,
                          fontFamily: 'NotoSansKR-Regular',
                        ),
                      ),
                    ),
                    position: const StyledToastPosition(
                        align: Alignment.bottomCenter),
                    context: context,
                    isIgnoring: false,
                    duration: const Duration(seconds: 4),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(12),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: MyColor.purple,
                  ),
                  height: 56,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '5,000',
                              style: MyStyle.tx16W.copyWith(
                                  fontWeight: FontWeight.w700, fontSize: 13),
                            ),
                            TextSpan(
                              text: ' Points',
                              style: MyStyle.tx14W.copyWith(
                                fontFamily: 'NotoSansKR-Regular',
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '6,500',
                              style: MyStyle.tx16W.copyWith(
                                  fontWeight: FontWeight.w600, fontSize: 13),
                            ),
                            TextSpan(
                              text: ' won',
                              style: MyStyle.tx14W.copyWith(
                                fontFamily: 'NotoSansKR-Regular',
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                  showToastWidget(
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 28.0, vertical: 10.0),
                      margin: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 2,
                      ),
                      height: 56,
                      decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          color: MyColor.white),
                      child: Text(
                        'Point charging is completed.',
                        style: MyStyle.tx14B.copyWith(
                          fontSize: 14,
                          fontFamily: 'NotoSansKR-Regular',
                        ),
                      ),
                    ),
                    position: const StyledToastPosition(
                        align: Alignment.bottomCenter),
                    context: context,
                    isIgnoring: false,
                    duration: const Duration(seconds: 4),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(12),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: MyColor.purple,
                  ),
                  height: 56,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '10,000',
                              style: MyStyle.tx16W.copyWith(
                                  fontWeight: FontWeight.w700, fontSize: 13),
                            ),
                            TextSpan(
                              text: ' Points',
                              style: MyStyle.tx14W.copyWith(
                                fontFamily: 'NotoSansKR-Regular',
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '13,000',
                              style: MyStyle.tx16W.copyWith(
                                  fontWeight: FontWeight.w600, fontSize: 13),
                            ),
                            TextSpan(
                              text: ' won',
                              style: MyStyle.tx14W.copyWith(
                                fontFamily: 'NotoSansKR-Regular',
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pop(context);

                  //Interactive toast, set [isIgnoring] false.
                  showToastWidget(
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 28.0, vertical: 10.0),
                      margin: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 2,
                      ),
                      height: 56,
                      decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          color: MyColor.white),
                      child: Text(
                        'Point charging is completed.',
                        style: MyStyle.tx14B.copyWith(
                          fontSize: 14,
                          fontFamily: 'NotoSansKR-Regular',
                        ),
                      ),
                    ),
                    position: const StyledToastPosition(
                        align: Alignment.bottomCenter),
                    context: context,
                    isIgnoring: false,
                    duration: const Duration(seconds: 4),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: MyColor.purple,
                  ),
                  height: 56,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '50,000',
                              style: MyStyle.tx16W.copyWith(
                                  fontWeight: FontWeight.w700, fontSize: 13),
                            ),
                            TextSpan(
                              text: ' Points',
                              style: MyStyle.tx14W.copyWith(
                                fontFamily: 'NotoSansKR-Regular',
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '65,000',
                              style: MyStyle.tx16W.copyWith(
                                  fontWeight: FontWeight.w600, fontSize: 13),
                            ),
                            TextSpan(
                              text: ' won',
                              style: MyStyle.tx14W.copyWith(
                                fontFamily: 'NotoSansKR-Regular',
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                  //Interactive toast, set [isIgnoring] false.
                  showToastWidget(
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 2,
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 28.0, vertical: 10.0),
                      height: 56,
                      decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          color: MyColor.white),
                      child: Text(
                        'Point charging is completed.',
                        style: MyStyle.tx14B.copyWith(
                          fontSize: 14,
                          fontFamily: 'NotoSansKR-Regular',
                        ),
                      ),
                    ),
                    position: const StyledToastPosition(
                        align: Alignment.bottomCenter),
                    context: context,
                    isIgnoring: false,
                    duration: const Duration(seconds: 4),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 2,
                  ),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: MyColor.purple,
                  ),
                  height: 56,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '100,000',
                              style: MyStyle.tx16W.copyWith(
                                  fontWeight: FontWeight.w700, fontSize: 13),
                            ),
                            TextSpan(
                              text: ' Points',
                              style: MyStyle.tx14W.copyWith(
                                fontFamily: 'NotoSansKR-Regular',
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '130,000',
                              style: MyStyle.tx16W.copyWith(
                                  fontWeight: FontWeight.w600, fontSize: 13),
                            ),
                            TextSpan(
                              text: ' won',
                              style: MyStyle.tx14W.copyWith(
                                fontFamily: 'NotoSansKR-Regular',
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
            ],
          ),
        );
      },
    );
  }
}
