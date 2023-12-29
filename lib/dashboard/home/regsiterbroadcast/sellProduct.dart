import 'package:flutter/material.dart';
import 'package:route_in_live/values/MyColor.dart';
import 'package:route_in_live/values/MyStyle.dart';

import '../../../constants/routes.dart';

class SellProduct extends StatefulWidget {
  const SellProduct({super.key});

  @override
  State<SellProduct> createState() => _SellProductState();
}

class _SellProductState extends State<SellProduct> {
  final List<String> _capacity = <String>[
    '11, graphite, golf bag set, genuine product.',
    '11, graphite, caddy bag, genuine product.',
    '11, lightweight steel, caddy bag, genuine product.',
    '7, graphite, golf set. At the same time.',
    '7,Lightweight steel. Minimum golf set. At the same time.',
    '7, graphite, golf set, genuine product.',
    'Global specification. At the same time.',
  ];
  String? selectedVal;

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
            Container(
              height: 38,
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
                    'Enter the product name.',
                    style: MyStyle.tx14W.copyWith(
                      color: MyColor.black.withOpacity(0.7),
                    ),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    width: 30,
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
                    // padding: EdgeInsets.all(8.0),
                    // width: 120
                    alignment: Alignment.topRight,
                    decoration: BoxDecoration(
                        color: MyColor.orange,
                        borderRadius: BorderRadius.circular(33)),
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 15.0),
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
                                    productBottomSheet();
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

  void productBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return SizedBox(
            width: 370,
            height: 450,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return sellDialog();
                        },
                      );
                    },
                    child: Image.asset(
                      'assets/icons/cancel.png',
                      alignment: Alignment.bottomRight,
                      height: 22,
                      width: 22,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Image.asset('assets/images/img1.png'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8.0,
                            // vertical: 4.0,
                          ),
                          child: Text(
                            'Golf club',
                            style: MyStyle.tx16B
                                .copyWith(fontFamily: 'NotoSansKR-SemiBold'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8.0,
                            // vertical: 4.0,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '36,000 ',
                                  style: MyStyle.tx16B.copyWith(
                                    fontFamily: 'NotoNastaliqUrdu-Regular',
                                  ),
                                ),
                                TextSpan(
                                  text: 'won',
                                  style: MyStyle.tx16B.copyWith(
                                    fontFamily: 'Montserrat-Medium',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  thickness: 0,
                ),
                const SizedBox(
                  height: 10,
                ),

                // *** DropDown
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0.6),
                      borderSide: BorderSide(
                        color: MyColor.black.withOpacity(0.5),
                      ),
                    ),
                    contentPadding: const EdgeInsets.all(10),
                  ),
                  isExpanded: true,
                  hint: Text(
                    'Measure of Capacity',
                    style: MyStyle.tx13B.copyWith(
                        fontFamily: 'NotoSansKR-Regular', letterSpacing: 0.33),
                  ),
                  selectedItemBuilder: (BuildContext context) {
                    return _capacity.map<Widget>((String item) {
                      return Container(
                        alignment: Alignment.centerLeft,
                        constraints: const BoxConstraints(minWidth: 100),
                        child: Text(
                          item,
                          maxLines: 1,
                          style: MyStyle.tx13B,
                        ),
                      );
                    }).toList();
                  },
                  value: selectedVal,
                  icon: const Icon(
                    Icons.keyboard_arrow_down_outlined,
                    size: 16,
                    color: MyColor.black,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedVal = newValue!;
                    });
                  },
                  items: _capacity.map<DropdownMenuItem<String>>((list) {
                    return DropdownMenuItem<String>(
                        value: list,
                        child: Text(
                          list,
                          style: MyStyle.tx13B,
                        ));
                  }).toList(),
                ),

                const SizedBox(
                  height: 10,
                ),

                // *** Size Increase Or Decrease
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0.6),
                      border: Border.all(
                        color: MyColor.black.withOpacity(0.1),
                      ),
                    ),
                    alignment: Alignment.bottomRight,
                    height: 24,
                    width: 110,
                    child: const Row(
                      children: [
                        SizedBox(
                          height: 24,
                          width: 24,
                          child: Center(
                            child: Text(
                              '-',
                            ),
                          ),
                        ),
                        VerticalDivider(
                          thickness: 0,
                        ),
                        SizedBox(
                          height: 16,
                          width: 24,
                          child: Center(
                            child: Text(
                              '1',
                              // textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        VerticalDivider(
                          thickness: 0,
                        ),
                        SizedBox(
                          height: 24,
                          width: 24,
                          child: Center(
                            child: Text(
                              '+',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //  Button
                InkWell(
                  onTap: () {
                    // showDialog(
                    //     context: context,
                    //     builder: (BuildContext context) {
                    //       return sellDialog();
                    //     });
                    Navigator.pushNamed(context, storeItemRoute);
                  },
                  child: Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.all(10.0),
                    height: 44,
                    color: MyColor.yellowamber,
                    child: Center(
                      child: Text(
                        'Put it in',
                        style: MyStyle.tx16B.copyWith(
                          fontWeight: FontWeight.w500,
                          color: MyColor.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  Widget sellDialog() {
    return AlertDialog(
      title: Column(
        children: [
          Text(
            'The product was included in the product to be sold with the option you chose.',
            textAlign: TextAlign.center,
            style: MyStyle.tx17B.copyWith(
              fontSize: 16,
              letterSpacing: 0.41,
              fontFamily: 'NotoSansKR-Medium',
            ),
          ),
          const Divider(
            thickness: 0,
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Text(
              'Close',
              style: MyStyle.tx17B.copyWith(
                fontWeight: FontWeight.w400,
                fontFamily: 'NotoSansKR-SemiBold',
                letterSpacing: 0.41,
                fontSize: 15,
              ),
            ),
          )
        ],
      ),
    );
  }
}
