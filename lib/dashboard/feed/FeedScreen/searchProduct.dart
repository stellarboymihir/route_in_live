import 'package:flutter/material.dart';

import '../../../values/MyColor.dart';
import '../../../values/MyStyle.dart';

class SearchProduct extends StatefulWidget {
  const SearchProduct({super.key});

  @override
  State<SearchProduct> createState() => _SearchProductState();
}

class _SearchProductState extends State<SearchProduct> {
  TextEditingController searchingBar = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Select products to sell',
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
            padding: const EdgeInsets.all(15.0),
            child: Image.asset(
              'assets/icons/bag.png',
              height: 17,
              width: 17,
            ),
          ),
        ],
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // *** Search Bar ***
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              child: Container(
                height: 32,
                margin: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.only(left: 10.0),
                decoration: BoxDecoration(
                  color: MyColor.black.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(26),
                ),
                child: TextFormField(
                  buildCounter: (context,
                          {required currentLength,
                          required isFocused,
                          maxLength}) =>
                      const SizedBox(),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(color: MyColor.white),
                    ),
                    contentPadding: const EdgeInsets.all(8.0),
                    hintText: 'Please enter the post.',
                    hintStyle: TextStyle(
                      color: MyColor.black.withOpacity(0.7),
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  style: const TextStyle(
                    color: MyColor.black,
                  ),
                  controller: searchingBar,
                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              ),
            ),
            Container(
              height: 32,
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.only(left: 10.0),
              decoration: BoxDecoration(
                color: MyColor.black.withOpacity(0.05),
                borderRadius: BorderRadius.circular(26),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Please enter the product name.',
                    style: MyStyle.tx14W.copyWith(
                      fontSize: 13,
                      color: MyColor.black.withOpacity(0.7),
                    ),
                  ),
                  InkWell(
                    // onTap: () {
                    //   Navigator.pop(context);
                    // },
                    child: Image.asset(
                      'assets/icons/close.png',
                      width: 16,
                      height: 16,
                    ),
                  ),
                  Container(
                    height: 32,
                    decoration: BoxDecoration(
                        color: MyColor.orange,
                        borderRadius: BorderRadius.circular(33)),
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Center(
                          child: Text(
                            'search',
                            style: MyStyle.tx14W.copyWith(
                              fontSize: 13,
                            ),
                          ),
                        ),
                        Image.asset(
                          'assets/icons/search.png',
                          fit: BoxFit.fill,
                          height: 12,
                          width: 12,
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
                        color: MyColor.black.withOpacity(0.05),
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
                                InkWell(
                                  onTap: () {
                                    // productBottomSheet();
                                  },
                                  child: Container(
                                    height: 32,
                                    width: 32,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: MyColor.yellowamber,
                                    ),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Image.asset(
                                          'assets/icons/plus.png',
                                          height: 14,
                                          width: 14,
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
                    ),
                    const SizedBox(
                      width: 10,
                    ),

                    // 2nd Image
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(top: 15.0),
                        color: MyColor.black.withOpacity(0.05),
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
                                InkWell(
                                  onTap: () {
                                    // productBottomSheet();
                                  },
                                  child: Container(
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
                        color: MyColor.black.withOpacity(0.05),
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
                                InkWell(
                                  onTap: () {
                                    // productBottomSheet();
                                  },
                                  child: Container(
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
                        color: MyColor.black.withOpacity(0.05),
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
                                InkWell(
                                  onTap: () {
                                    // productBottomSheet();
                                  },
                                  child: Container(
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
                        color: MyColor.black.withOpacity(0.05),
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
                                InkWell(
                                  onTap: () {
                                    // productBottomSheet();
                                  },
                                  child: Container(
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
                        color: MyColor.black.withOpacity(0.05),
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
                                InkWell(
                                  onTap: () {
                                    // productBottomSheet();
                                  },
                                  child: Container(
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
