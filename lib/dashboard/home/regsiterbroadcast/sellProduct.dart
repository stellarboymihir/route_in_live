import 'package:flutter/material.dart';
import 'package:route_in_live/values/MyColor.dart';
import 'package:route_in_live/values/MyStyle.dart';

class SellProduct extends StatefulWidget {
  const SellProduct({super.key});

  @override
  State<SellProduct> createState() => _SellProductState();
}

class _SellProductState extends State<SellProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Choose a product to sell',
          textAlign: TextAlign.center,
          style: MyStyle.tx14W.copyWith(
            color: MyColor.black,
            fontFamily: 'NotoSansKR-Regular',
          ),
        ),
        shape: UnderlineInputBorder(
          borderSide: BorderSide(
            color: MyColor.black.withOpacity(0.1),
          ),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/icons/bag.png',
              height: 17,
              width: 18,
            ),
          ),
        ],
        // Image.asset(
        //   alignment: Alignment.topRight,
        //   'assets/icons/bag.png',
        //   height: 17,
        //   width: 18,
        // ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // *** Search Bar ***
            Container(
              height: 38,
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.only(left: 10.0),
              decoration: BoxDecoration(
                color: MyColor.grey,
                borderRadius: BorderRadius.circular(26),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Enter the product name.',
                    style: MyStyle.tx14W.copyWith(
                      color: MyColor.black.withOpacity(0.7),
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Container(
                    // width: 120
                    alignment: Alignment.topRight,
                    decoration: BoxDecoration(
                        color: MyColor.orange,
                        borderRadius: BorderRadius.circular(33)),
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'search',
                          style: MyStyle.tx14W,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Image.asset(
                          'assets/icons/search.png',
                          height: 14,
                          width: 14,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            //  Images for 1st Row
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                child: Row(
                  children: [
                    // 1st Image
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(top: 15.0),
                        color: MyColor.grey,
                        height: 236,
                        width: 172,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/img1.png',
                              height: 172,
                              width: 172,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Sports shoes with...',
                                      style: MyStyle.tx14W.copyWith(
                                          color: MyColor.black,
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: 0.33,
                                          fontSize: 12),
                                    ),
                                    const Text('39,000 won'),
                                  ],
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                // Plus Button
                                Container(
                                  height: 32,
                                  width: 32,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: MyColor.yellowamber,
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'assets/icons/plus.png',
                                        height: 14,
                                        width: 14,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),

                    // 2nd Image
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(top: 15.0),
                        color: MyColor.grey,
                        height: 236,
                        width: 172,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/img2.png',
                              height: 172,
                              width: 172,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Golf club',
                                      style: MyStyle.tx14W.copyWith(
                                          color: MyColor.black,
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: 0.33,
                                          fontSize: 12),
                                    ),
                                    const Text('310,000 won'),
                                  ],
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                // Plus Button
                                Container(
                                  height: 32,
                                  width: 32,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: MyColor.yellowamber,
                                  ),
                                  child: Center(
                                    child: Image.asset(
                                      'assets/icons/plus.png',
                                      height: 14,
                                      width: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //  Images for 2nd Row
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                child: Row(
                  children: [
                    // 3rd Image
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(top: 15.0),
                        color: MyColor.grey,
                        height: 236,
                        width: 172,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/img3.png',
                              height: 172,
                              width: 172,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Golf ball set',
                                      style: MyStyle.tx14W.copyWith(
                                          color: MyColor.black,
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: 0.33,
                                          fontSize: 12),
                                    ),
                                    const Text('60,000 won'),
                                  ],
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                // Plus Button
                                Container(
                                  height: 32,
                                  width: 32,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: MyColor.yellowamber,
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'assets/icons/plus.png',
                                        height: 14,
                                        width: 14,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
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
                        padding: const EdgeInsets.only(top: 15.0),
                        color: MyColor.grey,
                        height: 236,
                        width: 172,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/img4.png',
                              height: 172,
                              width: 172,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'A white cap',
                                      style: MyStyle.tx14W.copyWith(
                                          color: MyColor.black,
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: 0.33,
                                          fontSize: 12),
                                    ),
                                    const Text('39,000 won'),
                                  ],
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                // Plus Button
                                Container(
                                  height: 32,
                                  width: 32,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: MyColor.yellowamber,
                                  ),
                                  child: Center(
                                    child: Image.asset(
                                      'assets/icons/plus.png',
                                      height: 14,
                                      width: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //  Images for 3rd Row
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                child: Row(
                  children: [
                    // 5th Image
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(top: 15.0),
                        color: MyColor.grey,
                        height: 236,
                        width: 172,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/img5.png',
                              height: 172,
                              width: 172,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Sports shoes with...',
                                      style: MyStyle.tx14W.copyWith(
                                          color: MyColor.black,
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: 0.33,
                                          fontSize: 12),
                                    ),
                                    const Text('39,000 won'),
                                  ],
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                // Plus Button
                                Container(
                                  height: 32,
                                  width: 32,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: MyColor.yellowamber,
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'assets/icons/plus.png',
                                        height: 14,
                                        width: 14,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
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
                        padding: const EdgeInsets.only(top: 15.0),
                        color: MyColor.grey,
                        height: 236,
                        width: 172,
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/img6.png',
                              height: 172,
                              width: 172,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Golf club',
                                      style: MyStyle.tx14W.copyWith(
                                          color: MyColor.black,
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: 0.33,
                                          fontSize: 12),
                                    ),
                                    const Text('310,000 won'),
                                  ],
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                // Plus Button
                                Container(
                                  height: 32,
                                  width: 32,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: MyColor.yellowamber,
                                  ),
                                  child: Center(
                                    child: Image.asset(
                                      'assets/icons/plus.png',
                                      height: 14,
                                      width: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
