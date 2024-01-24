import 'package:flutter/material.dart';
import 'package:route_in_live/values/MyStyle.dart';

import '../../constants/routes.dart';
import '../../values/MyColor.dart';

class Store extends StatefulWidget {
  const Store({super.key});

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        automaticallyImplyLeading: false,
        title: Text(
          'Store',
          style: MyStyle.tx14B.copyWith(
            fontSize: 14,
            // fontFamily: 'NotoSansKR-Regular',
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(
              'assets/icons/cart.png',
              height: 24,
              width: 24,
              color: Colors.black,
            ),
          ),
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: Divider(
            thickness: 1,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Recommended Products
              Text(
                'Recommended product',
                textAlign: TextAlign.start,
                style: MyStyle.tx16B.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // Products
              Row(
                children: [
                  // 1st Container
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      color: MyColor.grey,
                      // margin: ,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, productInfoRoute);
                            },
                            child: Stack(
                              children: [
                                Image.asset(
                                  'assets/images/img1.png',
                                  height: 172,
                                  width: MediaQuery.of(context).size.width,
                                ),
                                Positioned(
                                  top: 8,
                                  left: 8,
                                  child: Container(
                                    padding: const EdgeInsets.all(7.0),
                                    decoration: BoxDecoration(
                                      color: MyColor.purple,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Text(
                                      'It\'s almost',
                                      style: MyStyle.tx12B.copyWith(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 4.0, vertical: 4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Sports shoes with...',
                                        maxLines: 1,
                                        textAlign: TextAlign.start,
                                        style: MyStyle.tx14B.copyWith(
                                          fontSize: 14,
                                          fontFamily: 'NotoSansKR-Medium',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      RichText(
                                          text: const TextSpan(children: [
                                        TextSpan(
                                          text: '10% ',
                                          style: MyStyle.tx13P,
                                        ),
                                        TextSpan(
                                          text: '39,000 won',
                                          style: MyStyle.tx13B,
                                        ),
                                      ]))
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 24,
                                  width: 24,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: MyColor.yellowamber,
                                  ),
                                  child: Image.asset('assets/icons/Cart1.png'),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 4.0, right: 4.0),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/avtar1.png',
                                  height: 24,
                                  width: 24,
                                ),
                                Image.asset(
                                  'assets/images/avtar2.png',
                                  height: 24,
                                  width: 22,
                                ),
                                Image.asset(
                                  'assets/images/avtar3.png',
                                  height: 24,
                                  width: 22,
                                ),
                                const Spacer(),
                                Image.asset(
                                  'assets/images/badge.png',
                                  height: 24,
                                  width: 24,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                const Text(
                                  'Celeb reco- \n mmendation',
                                  style: MyStyle.tx8,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // 2nd Container
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      color: MyColor.grey,
                      // margin: ,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Image.asset(
                                'assets/images/img2.png',
                                height: 172,
                                width: MediaQuery.of(context).size.width,
                              ),
                              Positioned(
                                top: 8,
                                left: 8,
                                child: Container(
                                  padding: const EdgeInsets.all(7.0),
                                  decoration: BoxDecoration(
                                    color: MyColor.black,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Text(
                                    'Sold Out',
                                    style: MyStyle.tx12B.copyWith(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: MyColor.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 4.0, vertical: 4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Golf Club',
                                        textAlign: TextAlign.start,
                                        style: MyStyle.tx14B.copyWith(
                                          fontSize: 14,
                                          fontFamily: 'NotoSansKR-Medium',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      RichText(
                                          text: const TextSpan(children: [
                                        TextSpan(
                                          text: '20% ',
                                          style: MyStyle.tx13P,
                                        ),
                                        TextSpan(
                                          text: '589,000 won',
                                          style: MyStyle.tx13B,
                                        ),
                                      ]))
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 24,
                                  width: 24,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: MyColor.yellowamber,
                                  ),
                                  child: InkWell(
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return soldDialog();
                                            });
                                      },
                                      child: Image.asset(
                                          'assets/icons/Cart1.png')),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 4.0, right: 4.0),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/avtar1.png',
                                  height: 24,
                                  width: 24,
                                ),
                                Image.asset(
                                  'assets/images/avtar2.png',
                                  height: 24,
                                  width: 22,
                                ),
                                Image.asset(
                                  'assets/images/avtar3.png',
                                  height: 24,
                                  width: 22,
                                ),
                                const Spacer(),
                                Image.asset(
                                  'assets/images/badge.png',
                                  height: 24,
                                  width: 24,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                const Text(
                                  'Celeb reco- \n mmendation',
                                  style: MyStyle.tx8,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              //   List of Products
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Text(
                  'Product List',
                  textAlign: TextAlign.start,
                  style: MyStyle.tx16B.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),

              // 1st Row
              Row(
                children: [
                  // 1st Image
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                        // detailSheet();
                        // setState(() {
                        //   isModelProduct == true
                        //       ? supportSheet()
                        //       : detailSheet();
                        // }
                        // );
                      },
                      child: Container(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        color: MyColor.black.withOpacity(0.05),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/img3.png',
                              height: 172,
                              // width: 172,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0, vertical: 4.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Golf ball set',
                                          maxLines: 1,
                                          textAlign: TextAlign.start,
                                          style: MyStyle.tx14B.copyWith(
                                            fontSize: 14,
                                            fontFamily: 'NotoSansKR-Medium',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        RichText(
                                            text: const TextSpan(children: [
                                          TextSpan(
                                            text: '10% ',
                                            style: MyStyle.tx13P,
                                          ),
                                          TextSpan(
                                            text: '36,000 won',
                                            style: MyStyle.tx13B,
                                          ),
                                        ]))
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 24,
                                    width: 24,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: MyColor.yellowamber,
                                    ),
                                    child:
                                        Image.asset('assets/icons/Cart1.png'),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 4.0, right: 4.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/avtar1.png',
                                    height: 24,
                                    width: 24,
                                  ),
                                  Image.asset(
                                    'assets/images/avtar2.png',
                                    height: 24,
                                    width: 22,
                                  ),
                                  Image.asset(
                                    'assets/images/avtar3.png',
                                    height: 24,
                                    width: 22,
                                  ),
                                  const Spacer(),
                                  Image.asset(
                                    'assets/images/badge.png',
                                    height: 24,
                                    width: 24,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  const Text(
                                    'Celeb reco- \n mmendation',
                                    style: MyStyle.tx8,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),

                  // 2nd Image
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        // showDialog(
                        //     context: context,
                        //     builder: (BuildContext context) {
                        //       // return soldDialog();
                        //     });
                      },
                      child: Container(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        color: MyColor.black.withOpacity(0.05),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/img4.png',
                              height: 172,
                              // width: 172,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0, vertical: 4.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'A white cap',
                                          maxLines: 1,
                                          textAlign: TextAlign.start,
                                          style: MyStyle.tx14B.copyWith(
                                            fontSize: 14,
                                            fontFamily: 'NotoSansKR-Medium',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        RichText(
                                            text: const TextSpan(children: [
                                          TextSpan(
                                            text: '10% ',
                                            style: MyStyle.tx13P,
                                          ),
                                          TextSpan(
                                            text: '589,000 won',
                                            style: MyStyle.tx13B,
                                          ),
                                        ]))
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 24,
                                    width: 24,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: MyColor.yellowamber,
                                    ),
                                    child:
                                        Image.asset('assets/icons/Cart1.png'),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 4.0, right: 4.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/avtar1.png',
                                    height: 24,
                                    width: 24,
                                  ),
                                  Image.asset(
                                    'assets/images/avtar2.png',
                                    height: 24,
                                    width: 22,
                                  ),
                                  Image.asset(
                                    'assets/images/avtar3.png',
                                    height: 24,
                                    width: 22,
                                  ),
                                  const Spacer(),
                                  Image.asset(
                                    'assets/images/badge.png',
                                    height: 24,
                                    width: 24,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  const Text(
                                    'Celeb reco- \n mmendation',
                                    style: MyStyle.tx8,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 10,
              ),
              //  Images for 2nd Row
              Row(
                children: [
                  // 3rd Image
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      color: MyColor.black.withOpacity(0.05),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/img44.png',
                            height: 172,
                            // width: 172,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 4.0, vertical: 4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Golf shoes',
                                        maxLines: 1,
                                        textAlign: TextAlign.start,
                                        style: MyStyle.tx14B.copyWith(
                                          fontSize: 14,
                                          fontFamily: 'NotoSansKR-Medium',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      RichText(
                                          text: const TextSpan(children: [
                                        TextSpan(
                                          text: '10% ',
                                          style: MyStyle.tx13P,
                                        ),
                                        TextSpan(
                                          text: '39,000 won',
                                          style: MyStyle.tx13B,
                                        ),
                                      ]))
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 24,
                                  width: 24,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: MyColor.yellowamber,
                                  ),
                                  child: Image.asset('assets/icons/Cart1.png'),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 4.0, right: 4.0),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/avtar1.png',
                                  height: 24,
                                  width: 24,
                                ),
                                Image.asset(
                                  'assets/images/avtar2.png',
                                  height: 24,
                                  width: 22,
                                ),
                                Image.asset(
                                  'assets/images/avtar3.png',
                                  height: 24,
                                  width: 22,
                                ),
                                const Spacer(),
                                Image.asset(
                                  'assets/images/badge.png',
                                  height: 24,
                                  width: 24,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                const Text(
                                  'Celeb reco- \n mmendation',
                                  style: MyStyle.tx8,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),

                  // 4th Image
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      color: MyColor.black.withOpacity(0.05),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/img45.png',
                            height: 172,
                            // width: 172,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 4.0, vertical: 4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Drvier Golf Club',
                                        maxLines: 1,
                                        textAlign: TextAlign.start,
                                        style: MyStyle.tx14B.copyWith(
                                          fontSize: 14,
                                          fontFamily: 'NotoSansKR-Medium',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      RichText(
                                          text: const TextSpan(children: [
                                        TextSpan(
                                          text: '30% ',
                                          style: MyStyle.tx13P,
                                        ),
                                        TextSpan(
                                          text: '589,000 won',
                                          style: MyStyle.tx13B,
                                        ),
                                      ]))
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 24,
                                  width: 24,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: MyColor.yellowamber,
                                  ),
                                  child: Image.asset('assets/icons/Cart1.png'),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 4.0, right: 4.0),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/avtar1.png',
                                  height: 24,
                                  width: 24,
                                ),
                                Image.asset(
                                  'assets/images/avtar2.png',
                                  height: 24,
                                  width: 22,
                                ),
                                Image.asset(
                                  'assets/images/avtar3.png',
                                  height: 24,
                                  width: 22,
                                ),
                                const Spacer(),
                                Image.asset(
                                  'assets/images/badge.png',
                                  height: 24,
                                  width: 24,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                const Text(
                                  'Celeb reco- \n mmendation',
                                  style: MyStyle.tx8,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              //  Images for 3rd Row
              Row(
                children: [
                  // 5th Image
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                      color: MyColor.black.withOpacity(0.05),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/img5.png',
                            height: 172,
                            // width: 172,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 4.0, vertical: 4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Sports Gloves',
                                        maxLines: 1,
                                        textAlign: TextAlign.start,
                                        style: MyStyle.tx14B.copyWith(
                                          fontSize: 14,
                                          fontFamily: 'NotoSansKR-Medium',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      RichText(
                                          text: const TextSpan(children: [
                                        TextSpan(
                                          text: '5% ',
                                          style: MyStyle.tx13P,
                                        ),
                                        TextSpan(
                                          text: '39,000 won',
                                          style: MyStyle.tx13B,
                                        ),
                                      ]))
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 24,
                                  width: 24,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: MyColor.yellowamber,
                                  ),
                                  child: Image.asset('assets/icons/Cart1.png'),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 4.0, right: 4.0),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/avtar1.png',
                                  height: 24,
                                  width: 24,
                                ),
                                Image.asset(
                                  'assets/images/avtar2.png',
                                  height: 24,
                                  width: 22,
                                ),
                                Image.asset(
                                  'assets/images/avtar3.png',
                                  height: 24,
                                  width: 22,
                                ),
                                const Spacer(),
                                Image.asset(
                                  'assets/images/badge.png',
                                  height: 24,
                                  width: 24,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                const Text(
                                  'Celeb reco- \n mmendation',
                                  style: MyStyle.tx8,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),

                  // 6th Image
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                      color: MyColor.black.withOpacity(0.05),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/img6.png',
                            height: 172,
                            // width: 172,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 4.0, vertical: 4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Billiard Cue Table',
                                        maxLines: 1,
                                        textAlign: TextAlign.start,
                                        style: MyStyle.tx14B.copyWith(
                                          fontSize: 14,
                                          fontFamily: 'NotoSansKR-Medium',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      RichText(
                                          text: const TextSpan(children: [
                                        TextSpan(
                                          text: '10% ',
                                          style: MyStyle.tx13P,
                                        ),
                                        TextSpan(
                                          text: '589,000 won',
                                          style: MyStyle.tx13B,
                                        ),
                                      ]))
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 24,
                                  width: 24,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: MyColor.yellowamber,
                                  ),
                                  child: Image.asset('assets/icons/Cart1.png'),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 4.0, right: 4.0),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/avtar1.png',
                                  height: 24,
                                  width: 24,
                                ),
                                Image.asset(
                                  'assets/images/avtar2.png',
                                  height: 24,
                                  width: 22,
                                ),
                                Image.asset(
                                  'assets/images/avtar3.png',
                                  height: 24,
                                  width: 22,
                                ),
                                const Spacer(),
                                Image.asset(
                                  'assets/images/badge.png',
                                  height: 24,
                                  width: 24,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                const Text(
                                  'Celeb reco- \n mmendation',
                                  style: MyStyle.tx8,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget soldDialog() {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      title: Center(
        child: Text(
          'This item is out of stock.',
          textAlign: TextAlign.center,
          style: MyStyle.tx17B.copyWith(fontFamily: 'NotoSansKR-Medium'),
        ),
      ),
      contentPadding: const EdgeInsets.all(0),
      actionsPadding:
          const EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 10),
      actions: [
        const Divider(
          thickness: 0.5,
          endIndent: 0,
          indent: 0,
        ),
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: SizedBox(
            height: 30,
            child: Center(
              child: Text(
                'Close',
                textAlign: TextAlign.center,
                style: MyStyle.tx17B.copyWith(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'NotoSansKR-Medium',
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
