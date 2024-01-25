import 'package:flutter/material.dart';

import '../../constants/routes.dart';
import '../../values/MyColor.dart';
import '../../values/MyStyle.dart';

class ProductInformation extends StatefulWidget {
  const ProductInformation({super.key});

  @override
  State<ProductInformation> createState() => _ProductInformationState();
}

class _ProductInformationState extends State<ProductInformation> {
  final List<String> _colorTypes = <String>[
    '3 kinds of yellow',
    '3 greens',
    '3 oranges',
  ];

  String? colorVal;
  bool onProductSelection = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        automaticallyImplyLeading: false,
        title: Text(
          'Product information',
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
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

        //Top UI
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    //Stack ke andar UI
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Image.asset(
                                  'assets/images/img3.png',
                                  height: 352,
                                  width: MediaQuery.of(context).size.width,
                                  fit: BoxFit.cover,
                                ),
                                Positioned(
                                  left: 8,
                                  top: 8,
                                  child: Container(
                                    padding: const EdgeInsets.all(7.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: MyColor.purple,
                                    ),
                                    child: Text(
                                      'It\'s Almost',
                                      style: MyStyle.tx14B.copyWith(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: MyColor.white),
                                    ),
                                  ),
                                )
                              ],
                            ),

                            // Bottom Text
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    '11 types of vivid golf balls',
                                    style: MyStyle.tx16B.copyWith(
                                      fontFamily: 'NotoSansKR-Medium',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'the rate of discount ',
                                        style: MyStyle.tx14W.copyWith(
                                          color: MyColor.purple,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w100,
                                          fontFamily: 'NotoSansKR-Regular',
                                        ),
                                      ),
                                      TextSpan(
                                        text: '10%',
                                        style: MyStyle.tx14W.copyWith(
                                          color: MyColor.purple,
                                          // fontSize: 13,
                                          fontWeight: FontWeight.w300,
                                          fontFamily: 'NotoSansKR-SemiBold',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            Row(
                              children: [
                                Text(
                                  '36,000',
                                  style: MyStyle.tx13B.copyWith(
                                      // fontWeight: FontWeight.w300,
                                      fontFamily: 'NotoSansKR-SemiBold'),
                                ),
                                Text(
                                  'won   |   ',
                                  style: MyStyle.tx13B.copyWith(
                                    fontWeight: FontWeight.w100,
                                    fontFamily: 'NotoSansKR-Regular',
                                  ),
                                ),
                                Text(
                                  '40,000',
                                  style: MyStyle.tx13B.copyWith(
                                    fontFamily: 'NotoSansKR-Regular',
                                    color: MyColor.black.withOpacity(0.7),
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/badge.png',
                                  width: 10,
                                  height: 13,
                                ),
                                Text(
                                  ' Promoted celebrity list',
                                  style: MyStyle.tx14W.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: MyColor.purple,
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                              ],
                            ),

                            //  Images in Row
                            SingleChildScrollView(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              physics: const AlwaysScrollableScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/avtar4.png',
                                    height: 72,
                                    width: 72,
                                  ),
                                  Image.asset(
                                    'assets/images/avtar5.png',
                                    height: 72,
                                    width: 72,
                                  ),
                                  Image.asset(
                                    'assets/images/avtar6.png',
                                    height: 72,
                                    width: 72,
                                  ),
                                  Image.asset(
                                    'assets/images/avtar7.png',
                                    height: 72,
                                    width: 72,
                                  ),
                                  Image.asset(
                                    'assets/images/avtar8.png',
                                    height: 72,
                                    width: 72,
                                  ),
                                ],
                              ),
                            ),

                            // Img container
                            Container(
                              // padding: const EdgeInsets.all(20.0),
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 2.0, vertical: 8.0),
                              height: 476,
                              color: MyColor.lgrey,
                              child: const Center(
                                child: Text(
                                  'Detail img',
                                  style: MyStyle.tx20W,
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text('Delivery information',
                                      style: MyStyle.tx14B),
                                  const SizedBox(
                                    height: 10,
                                    child: Divider(
                                      thickness: 0,
                                    ),
                                  ),
                                  const Text(
                                    '- Delivery: CJ Logistics \n'
                                    '- Shipping fee: 3,000 won (Additional 5,000 won for '
                                    'mountainous areas/Jeju Island)',
                                    style: MyStyle.tx14B,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                    child: Divider(
                                      thickness: 0,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'Shipping/Return/Exchange Guidance',
                                        style: MyStyle.tx14B,
                                      ),
                                      Image.asset(
                                        'assets/icons/downArrow.png',
                                        height: 24,
                                        width: 24,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                    child: Divider(
                                      thickness: 0,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'A/S information',
                                        style: MyStyle.tx14B,
                                      ),
                                      Image.asset(
                                        'assets/icons/downArrow.png',
                                        height: 24,
                                        width: 24,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                    child: Divider(
                                      thickness: 0,
                                    ),
                                  ),
                                  ListTileTheme(
                                    // contentPadding: const EdgeInsets.all(8.0),
                                    dense: true,
                                    horizontalTitleGap: 0.0,
                                    minLeadingWidth: 0,
                                    minVerticalPadding: 0,
                                    child: ExpansionTile(
                                      title: const Text(
                                        'Seller information',
                                        style: MyStyle.tx14B,
                                      ),
                                      tilePadding: const EdgeInsets.all(0.0),
                                      shape:
                                          Border.all(color: Colors.transparent),
                                      trailing: Image.asset(
                                        'assets/icons/downArrow.png',
                                        height: 24,
                                        width: 24,
                                      ),
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'One Q Studio Co., Ltd',
                                                  style: MyStyle.tx11.copyWith(
                                                    fontFamily:
                                                        'NotoSansKR-Regular',
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                                Text(
                                                  'Terms and conditions',
                                                  textAlign: TextAlign.right,
                                                  style: MyStyle.tx11.copyWith(
                                                    fontSize: 10,
                                                    fontFamily:
                                                        'NotoSansKR-Regular',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Text(
                                                  'Personal information processing policy.',
                                                  style: MyStyle.tx11.copyWith(
                                                    fontSize: 9,
                                                    fontFamily:
                                                        'NotoSansKR-Regular',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              // mainAxisAlignment:
                                              //     MainAxisAlignment.spaceAround,
                                              children: [
                                                Text(
                                                  'View business information',
                                                  style: MyStyle.tx9B.copyWith(
                                                      fontFamily:
                                                          'NotoSansKR-Thin'),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const Expanded(
                                                  child: Text('CEO',
                                                      textAlign: TextAlign.left,
                                                      style: MyStyle.tx9B),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    'CEO',
                                                    style: MyStyle.tx9B.copyWith(
                                                        fontFamily:
                                                            'NotoSansKR-Thin'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              // mainAxisAlignment:
                                              //     MainAxisAlignment.spaceAround,
                                              children: [
                                                const Expanded(
                                                  child: Text(
                                                      'Company Registration Number',
                                                      style: MyStyle.tx9B),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    'CEO',
                                                    style: MyStyle.tx9B.copyWith(
                                                        fontFamily:
                                                            'NotoSansKR-Thin'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              // mainAxisAlignment:
                                              //     MainAxisAlignment.spaceAround,
                                              children: [
                                                const Expanded(
                                                  child: Text(
                                                      'Mail-order business report',
                                                      style: MyStyle.tx9B),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    '2020-Regional Information-Number of \n'
                                                    'subscriptions.',
                                                    textAlign: TextAlign.left,
                                                    style:
                                                        MyStyle.tx9B.copyWith(
                                                      fontFamily:
                                                          'NotoSansKR-Thin',
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              // mainAxisAlignment:
                                              //     MainAxisAlignment.spaceAround,
                                              children: [
                                                const Expanded(
                                                  child: Text('Main Phone',
                                                      style: MyStyle.tx9B),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    '1500-0000',
                                                    textAlign: TextAlign.left,
                                                    style:
                                                        MyStyle.tx9B.copyWith(
                                                      fontFamily:
                                                          'NotoSansKR-Thin',
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              // mainAxisAlignment:
                                              //     MainAxisAlignment.spaceAround,
                                              children: [
                                                const Expanded(
                                                  child: Text('E-Mail',
                                                      style: MyStyle.tx9B),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    'help@onecue.kr',
                                                    textAlign: TextAlign.left,
                                                    style:
                                                        MyStyle.tx9B.copyWith(
                                                      fontFamily:
                                                          'NotoSansKR-Thin',
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),

                                            //   Spacing
                                            const SizedBox(
                                              height: 10,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  const Divider(
                                    thickness: 0,
                                  ),
                                  const Text(
                                    '1:1 inquiry',
                                    style: MyStyle.tx14B,
                                  ),
                                  const Divider(
                                    thickness: 0,
                                  ),
                                  const SizedBox(
                                    height: 35,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Image

                    // Bottom 2 Row
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                shoppingBasket();
                              },
                              child: Container(
                                height: 44,
                                color: MyColor.yellowamber,
                                child: Center(
                                  child: Text(
                                    'A Shopping Basket',
                                    style: MyStyle.tx14W.copyWith(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                                return paymentSheet(context);
                                print('tapping');
                              },
                              child: Container(
                                height: 44,
                                color: MyColor.purple,
                                child: Center(
                                  child: Text(
                                    'Buy it right away',
                                    style: MyStyle.tx14W.copyWith(
                                      fontWeight: FontWeight.w500,
                                    ),
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
          ],
        ),
      ),
    );
  }

  void shoppingBasket() {
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
          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: SizedBox(
              // height: (MediaQuery.of(context).size.height * 0.5) + 25,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, right: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          'assets/icons/cancel.png',
                          height: 20,
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/img3.png',
                          height: 172,
                          // width: 172,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                '11 types of vivid \n golf balls',
                                style: MyStyle.tx16B.copyWith(
                                  fontFamily: 'NotoSansKR-Medium',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Row(
                                children: [
                                  const Text('10%', style: MyStyle.tx13P),
                                  Text(
                                    ' 36,000',
                                    style: MyStyle.tx13B.copyWith(
                                        // fontWeight: FontWeight.w300,
                                        fontFamily: 'NotoSansKR-SemiBold'),
                                  ),
                                  Text(
                                    'won',
                                    style: MyStyle.tx13B.copyWith(
                                      fontWeight: FontWeight.w100,
                                      fontFamily: 'NotoSansKR-Regular',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(thickness: 0),

                  // Drop Down Button
                  DropdownButtonFormField(
                    padding: const EdgeInsets.all(12.0),
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
                    icon: const Icon(
                      Icons.keyboard_arrow_down_outlined,
                      size: 16,
                      color: MyColor.black,
                    ),
                    hint: Text(
                      'Color',
                      style: MyStyle.tx13B.copyWith(color: MyColor.blackO),
                    ),
                    onChanged: (String? newVal) {
                      setState(() {
                        colorVal = newVal!;
                      });
                    },
                    items: _colorTypes.map<DropdownMenuItem<String>>((val) {
                      return DropdownMenuItem<String>(
                          value: val,
                          child: Text(
                            val,
                            style: MyStyle.tx13B,
                          ));
                    }).toList(),
                  ),

                  //   Increase or Decrease

                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0.6),
                            border: Border.all(
                              color: MyColor.black.withOpacity(0.1),
                            ),
                          ),
                          alignment: Alignment.bottomRight,
                          height: 24,
                          width: 110,
                          child: Row(
                            children: [
                              SizedBox(
                                height: 24,
                                width: 24,
                                child: Center(
                                  child: Text(
                                    '-',
                                    style: MyStyle.tx16B,
                                  ),
                                ),
                              ),
                              const VerticalDivider(
                                thickness: 0,
                              ),
                              const SizedBox(
                                height: 24,
                                width: 24,
                                child: Center(
                                  child: Text(
                                    '1',
                                    // textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              const VerticalDivider(
                                thickness: 0,
                              ),
                              const SizedBox(
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
                      ],
                    ),
                  ),

                  //   Button
                  InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return shoppingCardDialog(context);
                          });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      height: 44,
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      width: MediaQuery.of(context).size.width,
                      color: MyColor.yellowamber,
                      child: Text(
                        'a shopping basket',
                        textAlign: TextAlign.center,
                        style: MyStyle.tx16B.copyWith(
                          fontWeight: FontWeight.w500,
                          color: MyColor.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  Widget shoppingCardDialog(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      title: Text(
        'The product\n Added to shopping cart ',
        textAlign: TextAlign.center,
        style: MyStyle.tx17B.copyWith(
          fontFamily: 'NotoSansKR-Medium',
        ),
      ),
      titlePadding: const EdgeInsets.only(
        top: 10.0,
        bottom: 0.0,
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 0),
      actionsPadding:
          const EdgeInsets.only(left: 0, right: 0, top: 0.0, bottom: 10.0),
      actions: [
        const Divider(
          thickness: 0.5, // change the thickness as you like
          indent: 0, // set to zero for full width
          endIndent: 0, // set to zero for full width
        ),
        InkWell(
          onTap: () {
            // if (mounted) {
            //   setState(() {
            //     return paymentSheet(context);
            //   });
            // }
            return paymentSheet(context);
          },
          child: SizedBox(
            height: 22,
            child: Center(
              child: Text(
                'Close',
                textAlign: TextAlign.center,
                style: MyStyle.tx17B.copyWith(
                  fontSize: 15,
                  fontFamily: 'NotoSansKR-Regular',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
        // TextButton(
        //   onPressed: () {
        //     return paymentSheet(context);
        //   },
        //   child: Center(
        //     child: Text(
        //       'Closed',
        //       textAlign: TextAlign.center,
        //       style: MyStyle.tx17B.copyWith(
        //         fontSize: 15,
        //         fontFamily: 'NotoSansKR-Regular',
        //         fontWeight: FontWeight.w400,
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }

  void paymentSheet(BuildContext context) {
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
            height: MediaQuery.of(context).size.height * 0.65 + 105,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                // Top Layer
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Product Sold
                    Container(
                      // padding:
                      //     EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
                      margin: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 8.0),
                      height: 32,
                      width: 132,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: MyColor.black.withOpacity(0.05),
                      ),
                      child: Center(
                        child: Text(
                          '6 products sold',
                          style: MyStyle.tx13B.copyWith(
                            color: MyColor.black.withOpacity(0.5),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),

                    //Shopping Cart Container
                    Container(
                      height: 32,
                      width: 132,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: MyColor.orange,
                      ),
                      child: Center(
                        child: Text(
                          '1 shopping carts',
                          style: MyStyle.tx13B.copyWith(color: MyColor.white),
                        ),
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, right: 16.0, top: 8.0, bottom: 8.0),
                        child: Image.asset(
                          'assets/icons/cancel.png',
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ),
                  ],
                ),

                //  Middle Layer
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icons/right.png',
                        height: 24,
                        width: 24,
                      ),
                      const SizedBox(width: 4),
                      InkWell(
                        onTap: () {
                          setState(() {
                            onProductSelection = true;
                          });
                        },
                        child: Text(
                          'Select All(1/1)',
                          style: MyStyle.tx12O.copyWith(
                            fontWeight: FontWeight.w400,
                            fontFamily: 'NotoSansKR-Regular',
                            letterSpacing: 0.33,
                            color: onProductSelection
                                ? MyColor.orange
                                : MyColor.black,
                          ),
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          saleSheet();
                        },
                        child: Container(
                          height: 26,
                          width: 102,
                          padding: const EdgeInsets.all(2.0),
                          margin: const EdgeInsets.all(8.0),
                          alignment: Alignment.topRight,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 0.4,
                              color: MyColor.black,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Delete selection',
                              style: MyStyle.tx12B.copyWith(
                                fontSize: 11,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //   Next Row
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/icons/right.png',
                        height: 24,
                        width: 24,
                        alignment: Alignment.topLeft,
                      ),
                      const SizedBox(width: 2),
                      Image.asset(
                        'assets/images/img3.png',
                        height: 84,
                        width: 84,
                      ),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(
                            height: 18,
                          ),
                          Text(
                            '11 kinds of vivid golf balls',
                            style: MyStyle.tx16B.copyWith(
                              fontFamily: 'NotoSansKR-Medium',
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            '3 kinds of yellow',
                            textAlign: TextAlign.start,
                            style: MyStyle.tx12B,
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                // 3rd Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 12.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0.6),
                        border: Border.all(
                          color: MyColor.black.withOpacity(0.1),
                        ),
                      ),
                      height: 24,
                      width: 110,
                      child: Row(
                        children: [
                          SizedBox(
                            height: 24,
                            width: 24,
                            child: Center(
                              child: Text(
                                '-',
                                style: MyStyle.tx16B,
                              ),
                            ),
                          ),
                          const VerticalDivider(
                            thickness: 0,
                          ),
                          const SizedBox(
                            height: 24,
                            width: 24,
                            child: Center(
                              child: Text(
                                '1',
                                // textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          const VerticalDivider(
                            thickness: 0,
                          ),
                          const SizedBox(
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
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '36,000',
                              style: MyStyle.tx16B.copyWith(
                                color: MyColor.purple,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(
                              text: '원',
                              style: MyStyle.tx16B.copyWith(
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 30.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.4,
                            color: MyColor.black,
                          ),
                          borderRadius: BorderRadius.circular(0.4),
                        ),
                        height: 32,
                        child: const Center(
                          child: Text(
                            'Delete',
                            style: MyStyle.tx13B,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        height: 32,
                        color: MyColor.black.withOpacity(0.1),
                        child: const Center(
                          child: Text(
                            'Change options',
                            style: MyStyle.tx13B,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),

                const Divider(
                  thickness: 0,
                ),

                SizedBox(
                  height: 108,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total Product Amount',
                              style: MyStyle.tx14B.copyWith(
                                color: MyColor.black.withOpacity(0.5),
                                fontSize: 14,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '40,000',
                                    style: MyStyle.tx14B.copyWith(
                                      fontSize: 14,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' won',
                                    style: MyStyle.tx14B.copyWith(
                                      fontSize: 14,
                                      color: MyColor.black.withOpacity(0.5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Shipping fee',
                              style: MyStyle.tx14B.copyWith(
                                color: MyColor.black.withOpacity(0.5),
                                fontSize: 14,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '2,500',
                                    style: MyStyle.tx14B.copyWith(
                                      fontSize: 14,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' won',
                                    style: MyStyle.tx14B.copyWith(
                                      fontSize: 14,
                                      color: MyColor.black.withOpacity(0.5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Apply Discount',
                              style: MyStyle.tx14B.copyWith(
                                color: MyColor.black.withOpacity(0.5),
                                fontSize: 14,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '4,000',
                                    style: MyStyle.tx14B.copyWith(
                                      fontSize: 14,
                                      color: MyColor.purple,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' won',
                                    style: MyStyle.tx14B.copyWith(
                                      fontSize: 14,
                                      color: MyColor.black.withOpacity(0.5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total payment amount',
                              style: MyStyle.tx14B.copyWith(
                                color: MyColor.black.withOpacity(0.5),
                                fontSize: 14,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '38,500',
                                    style: MyStyle.tx14B.copyWith(
                                        fontSize: 14, color: MyColor.orange),
                                  ),
                                  TextSpan(
                                    text: ' won',
                                    style: MyStyle.tx14B.copyWith(
                                      fontSize: 14,
                                      color: MyColor.black.withOpacity(0.5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, storePurchaseRoute);
                  },
                  child: Container(
                    height: 48,
                    color: MyColor.purple,
                    child: Center(
                      child: Text(
                        'Make a Payment',
                        style: MyStyle.tx14W.copyWith(
                          fontWeight: FontWeight.w500,
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

  void saleSheet() {
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
            height: MediaQuery.of(context).size.height * 0.75,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                // Top Layer
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Product Sold
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 8.0),
                      height: 32,
                      width: 132,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: MyColor.black.withOpacity(0.05),
                      ),
                      child: Center(
                        child: Text(
                          '6 products sold',
                          style: MyStyle.tx13B.copyWith(
                            color: MyColor.black.withOpacity(0.5),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),

                    //Shopping Cart Container
                    Container(
                      height: 32,
                      width: 132,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: MyColor.orange,
                      ),
                      child: Center(
                        child: Text(
                          '1 shopping carts',
                          style: MyStyle.tx13B.copyWith(color: MyColor.white),
                        ),
                      ),
                    ),

                    const SizedBox(
                      width: 40,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        'assets/icons/cancel.png',
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 180,
                ),
                Image.asset(
                  'assets/icons/error.png',
                  height: 40,
                  width: 40,
                ),
                Center(
                  child: Text(
                    'There are no products contained \n in the shopping cart.',
                    textAlign: TextAlign.center,
                    style: MyStyle.tx17B.copyWith(
                      fontFamily: 'NotoSansKR-Medium',
                      color: MyColor.orange,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 180,
                ),

                Container(
                  height: 48,
                  color: MyColor.yellowamber,
                  child: Center(
                    child: Text(
                      'Go To Sale',
                      style: MyStyle.tx14W.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
