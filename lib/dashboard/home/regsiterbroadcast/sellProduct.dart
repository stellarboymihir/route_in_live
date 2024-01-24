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
  TextEditingController searchBar = TextEditingController();
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
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: Divider(
            thickness: 0,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(
                right: 8.0, top: 8.0, left: 8.0, bottom: 8.0),
            child: Image.asset(
              'assets/icons/bag.png',
              alignment: Alignment.center,
              height: 20,
              width: 20,
            ),
          ),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // *** Search Bar ***
            Container(
              margin: const EdgeInsets.all(8.0),
              height: 40,
              padding:
                  EdgeInsets.only(left: 8.0, right: 0.0, top: 0.0, bottom: 0.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: MyColor.black.withOpacity(0.05),
                borderRadius: BorderRadius.circular(26),
              ),
              child: Row(
                children: [
                  Expanded(
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
                        border: InputBorder.none,
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
                      controller: searchBar,
                      keyboardType: TextInputType.text,
                      onChanged: (value) {
                        setState(() {});
                      },
                    ),
                  ),
                  InkWell(
                    child: Image.asset(
                      'assets/icons/close.png',
                      width: 16,
                      height: 16,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 40,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 0.0, vertical: 0),
                    // height: 40,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 0.0),
                    decoration: BoxDecoration(
                        color: MyColor.orange,
                        borderRadius: BorderRadius.circular(33)),
                    // padding: const EdgeInsets.symmetric(
                    //     vertical: 0.0, horizontal: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Center(
                          child: Text(
                            'search ',
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
                  ),
                ],
              ),
            ),

            //  Images for 1st Row
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  // 1st Image
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(top: 15.0),
                      color: MyColor.black.withOpacity(0.05),
                      height: 236,
                      // width: 172,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/img1.png',
                            height: 172,
                            // width: 172,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Sports shoes with...',
                                        textAlign: TextAlign.left,
                                        style: MyStyle.tx14W.copyWith(
                                            color: MyColor.black,
                                            fontWeight: FontWeight.w700,
                                            letterSpacing: 0.33,
                                            fontSize: 12),
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '39,000',
                                              style: MyStyle.tx13B.copyWith(
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'Montserrat-Medium',
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'won',
                                              style: MyStyle.tx13B.copyWith(
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
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
                      // width: 172,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/img2.png',
                            height: 172,
                            // width: 172,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Golf club',
                                        style: MyStyle.tx14W.copyWith(
                                            color: MyColor.black,
                                            fontWeight: FontWeight.w700,
                                            letterSpacing: 0.33,
                                            fontSize: 12),
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '310,000',
                                              style: MyStyle.tx13B.copyWith(
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'Montserrat-Medium',
                                              ),
                                            ),
                                            WidgetSpan(
                                                child: SizedBox(
                                              width: 0,
                                            )),
                                            TextSpan(
                                              text: 'won',
                                              style: MyStyle.tx13B.copyWith(
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
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
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Images for 2nd Row
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  // 3rd Image
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(top: 15.0),
                      color: MyColor.black.withOpacity(0.05),
                      height: 236,
                      // width: 172,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/img3.png',
                            height: 172,
                            // width: 172,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: '60,000',
                                            style: MyStyle.tx13B.copyWith(
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'Montserrat-Medium',
                                            ),
                                          ),
                                          WidgetSpan(
                                              child: SizedBox(
                                            width: 0,
                                          )),
                                          TextSpan(
                                            text: ' won',
                                            style: MyStyle.tx13B.copyWith(
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
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
                      // width: 172,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/img4.png',
                            height: 172,
                            // width: 172,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'A white cap',
                                        style: MyStyle.tx14W.copyWith(
                                            color: MyColor.black,
                                            fontWeight: FontWeight.w700,
                                            letterSpacing: 0.33,
                                            fontSize: 12),
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '39,000',
                                              style: MyStyle.tx13B.copyWith(
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'Montserrat-Medium',
                                              ),
                                            ),
                                            const WidgetSpan(
                                              child: SizedBox(
                                                width: 0,
                                              ),
                                            ),
                                            TextSpan(
                                              text: ' won',
                                              style: MyStyle.tx13B.copyWith(
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
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
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //  Images for 3rd Row
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  // 5th Image
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(top: 15.0),
                      color: MyColor.black.withOpacity(0.05),
                      height: 236,
                      // width: 172,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/img5.png',
                            height: 172,
                            // width: 172,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: '39,000',
                                            style: MyStyle.tx13B.copyWith(
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'Montserrat-Medium',
                                            ),
                                          ),
                                          const WidgetSpan(
                                            child: SizedBox(
                                              width: 0,
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' won',
                                            style: MyStyle.tx13B.copyWith(
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
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
                      // width: 172,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/img6.png',
                            height: 172,
                            // width: 172,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: '310,000',
                                            style: MyStyle.tx13B.copyWith(
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'Montserrat-Medium',
                                            ),
                                          ),
                                          const WidgetSpan(
                                            child: SizedBox(
                                              width: 0,
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' won',
                                            style: MyStyle.tx13B.copyWith(
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
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
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
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
                        height: 24,
                        width: 24,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/img1.png'),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 8.0,
                            ),
                            child: Text(
                              'Golf club',
                              style: MyStyle.tx16B
                                  .copyWith(fontFamily: 'NotoSansKR-SemiBold'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 8.0,
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
                          fontFamily: 'NotoSansKR-Regular',
                          letterSpacing: 0.33),
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
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0.6),
                      border: Border.all(
                        color: MyColor.black.withOpacity(0.1),
                      ),
                    ),
                    alignment: Alignment.bottomRight,
                    height: 24,
                    width: 90,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          // height: 24,
                          // width: 24,
                          child: Text(
                            '-',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        VerticalDivider(
                          thickness: 0,
                        ),
                        SizedBox(
                          // height: 16,
                          // width: 24,
                          child: Text(
                            '1',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        VerticalDivider(
                          thickness: 0,
                        ),
                        SizedBox(
                          // height: 24,
                          // width: 24,
                          child: Text(
                            '+',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
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
                      Navigator.pop(context);
                      Navigator.pushNamed(context, storeItemRoute);
                    },
                    child: Container(
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
            ),
          );
        });
  }

  Widget sellDialog() {
    return AlertDialog(
      title: Text(
        'The product was included in the product to be sold with the option you chose.',
        textAlign: TextAlign.center,
        style: MyStyle.tx17B.copyWith(
          letterSpacing: 0.41,
          fontFamily: 'NotoSansKR-Medium',
        ),
      ),
      contentPadding: EdgeInsets.all(0.0),
      actionsPadding: EdgeInsets.only(top: 0, bottom: 10),
      actions: [
        const Divider(
          thickness: 1,
        ),
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: SizedBox(
            height: 40,
            child: Center(
              child: Text(
                'Close',
                style: MyStyle.tx17B.copyWith(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'NotoSansKR-SemiBold',
                  letterSpacing: 0.41,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
