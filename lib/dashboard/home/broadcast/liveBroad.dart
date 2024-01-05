import 'package:flutter/material.dart';
import 'package:route_in_live/constants/routes.dart';
import 'package:route_in_live/values/MyColor.dart';
import 'package:route_in_live/values/MyStyle.dart';

class LiveBroadcast extends StatefulWidget {
  const LiveBroadcast({super.key});

  @override
  State<LiveBroadcast> createState() => _LiveBroadcastState();
}

class _LiveBroadcastState extends State<LiveBroadcast> {
  final List<String> _list = <String>[
    '1080p',
    '720p',
    '480p',
    '360p',
    '240p',
    '144p',
  ];

  String? selectedList;

  bool isModelProduct = false;

  var size, height, width;

  var container2;

  var container1;

  final List<String> _colorTypes = <String>[
    '3 kinds of yellow',
    '3 greens',
    '3 oranges',
  ];
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              // Image
              Image.asset(
                'assets/images/live.png',
                fit: BoxFit.fill,
                width: width,
                height: height,
              ),
              Positioned(
                top: 40,
                left: 10,
                right: 10,
                child: Column(
                  children: [
                    // 1st Row

                    Container(
                      width: width,
                      margin: const EdgeInsets.all(8.0),
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: MyColor.orange.withOpacity(0.25),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Let\'s play golf after knowing it!',
                            textAlign: TextAlign.center,
                            style: MyStyle.tx14W.copyWith(
                              fontWeight: FontWeight.w700,
                              fontSize: 13,
                            ),
                          ),
                          Text(
                            'Pak Se-ri',
                            style: MyStyle.tx10.copyWith(
                              fontFamily: 'NotoSansKR-Regular',
                              decoration: TextDecoration.none,
                              color: MyColor.white,
                            ),
                          )
                        ],
                      ),
                    ),

                    // 2nd Row
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: MyColor.white.withOpacity(0.20),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/icons/people.png',
                                height: 16,
                                width: 16,
                              ),
                              RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                    text: '1,000',
                                    style: MyStyle.tx11.copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'NotoSansKR-Regular',
                                      color: MyColor.white,
                                    ),
                                  ),
                                  const WidgetSpan(
                                    child: SizedBox(
                                      width: 5,
                                    ),
                                  ),
                                  const TextSpan(
                                      text: 'Viewers', style: MyStyle.tx10W),
                                ]),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),

                        //DropDown Menu
                        SizedBox(
                            height: 24,
                            width: 140,
                            child: Theme(
                              data: Theme.of(context).copyWith(
                                backgroundColor:
                                    MyColor.white.withOpacity(0.25),
                              ),
                              child: DropdownButtonFormField(
                                style: MyStyle.tx10W,
                                // itemHeight: 20,
                                // dropdownColor: Colors.transparent,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: MyColor.yellowamber,
                                    ),
                                  ),
                                ),
                                isExpanded: true,
                                hint: const Text(
                                  'Quality - Automatic (1080p)',
                                  style: MyStyle.tx10W,
                                ),
                                // selectedItemBuilder: (BuildContext context) {
                                //   return _list.map<Widget>((String item) {
                                //     return Container(
                                //       alignment: Alignment.center,
                                //       child: Text(
                                //         item,
                                //         maxLines: 1,
                                //         style: MyStyle.tx10W,
                                //       ),
                                //     );
                                //   }).toList();
                                // },
                                icon: const Visibility(
                                    visible: false,
                                    child: Icon(Icons.arrow_downward)),
                                value: selectedList,
                                items:
                                    _list.map<DropdownMenuItem<String>>((list) {
                                  return DropdownMenuItem<String>(
                                      value: list,
                                      child: Text(
                                        list,
                                        style: MyStyle.tx10W.copyWith(
                                            color: MyColor.yellowamber),
                                      ));
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedList = newValue!;
                                    print(selectedList);
                                  });
                                },
                              ),
                            )),
                        // InkWell(
                        //   child: Container(
                        //     padding: const EdgeInsets.all(8.0),
                        //     margin: const EdgeInsets.all(8.0),
                        //     decoration: BoxDecoration(
                        //       borderRadius: BorderRadius.circular(12),
                        //       color: MyColor.white.withOpacity(0.20),
                        //     ),
                        //     child: const Text(
                        //       'Quality - Automatic (1080p)',
                        //       style: MyStyle.tx10W,
                        //     ),
                        //   ),
                        // ),

                        // It will be uncommented

                        Expanded(
                          // 2nd Row 3rd Column
                          child: InkWell(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return closeDialog();
                                  });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(8.0),
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: MyColor.dred),
                              child: Text(
                                'Get out',
                                textAlign: TextAlign.center,
                                style: MyStyle.tx10W.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),

              // Bottom Container
              Positioned(
                bottom: 10,
                left: 0,
                right: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 3rd Row
                    Container(
                      width: 240,
                      margin: const EdgeInsets.all(8.0),
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: MyColor.yellowO,
                      ),

                      //  3rd Row
                      child: Row(
                        children: [
                          Text(
                            'Chicken lover sponsored ',
                            textAlign: TextAlign.center,
                            style: MyStyle.tx12B.copyWith(
                                color: MyColor.white,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Montserrat-Medium'),
                          ),
                          Text(
                            '100 Points',
                            textAlign: TextAlign.center,
                            style: MyStyle.tx12B.copyWith(
                                color: MyColor.orange,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'NotoSansKR-Medium'),
                          ),
                        ],
                      ),
                    ),
                    // 4th Row
                    Container(
                      width: 175,
                      margin: const EdgeInsets.all(8.0),
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: MyColor.yellowO,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Aigo sponsored ',
                            textAlign: TextAlign.center,
                            style: MyStyle.tx12B.copyWith(
                                color: MyColor.white,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Montserrat-Medium'),
                          ),
                          Text(
                            '50 Points',
                            textAlign: TextAlign.center,
                            style: MyStyle.tx12B.copyWith(
                                color: MyColor.orange,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'NotoSansKR-Medium'),
                          ),
                        ],
                      ),
                    ),

                    //  Chat container
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          //Users and messages
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Aigo',
                                style: MyStyle.tx12B
                                    .copyWith(color: MyColor.lemonyellow),
                              ),
                              const SizedBox(
                                width: 55,
                              ),
                              Text(
                                'It\'s cold, but I\'m going to practice \n golf indoors. '
                                'It\'s cold, but I\'m going \n to practice golf indoors. ',
                                style: MyStyle.tx12B.copyWith(
                                    color: MyColor.white, height: 1.2),
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Chicken love',
                                style: MyStyle.tx12B
                                    .copyWith(color: MyColor.lemonyellow),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Even if the weather is cold, you have \nto play golf.',
                                style: MyStyle.tx12B
                                    .copyWith(color: MyColor.white),
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Aigo',
                                style: MyStyle.tx12B
                                    .copyWith(color: MyColor.lemonyellow),
                              ),
                              const SizedBox(
                                width: 55,
                              ),
                              Text(
                                'It\'s cold, but I\'m going to practice \n '
                                'golf indoors.',
                                style: MyStyle.tx12B
                                    .copyWith(color: MyColor.white),
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Aigo',
                                style: MyStyle.tx12B
                                    .copyWith(color: MyColor.lemonyellow),
                              ),
                              const SizedBox(
                                width: 55,
                              ),
                              Text(
                                'The weather is cold.',
                                style: MyStyle.tx12B
                                    .copyWith(color: MyColor.white),
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                            ],
                          ),

                          // Last Row
                          Row(
                            // Bottom Row
                            children: [
                              InkWell(
                                onTap: () {
                                  prodSheet();
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(8.0),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: MyColor.orange,
                                  ),
                                  height: 32,
                                  width: 32,
                                  child: Image.asset(
                                    'assets/icons/gift.png',
                                    height: 16,
                                    width: 16,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),

                              Container(
                                width: 220,
                                height: 28,
                                padding: const EdgeInsets.all(5.0),
                                // margin: const EdgeInsets.all(2.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(color: MyColor.orange),
                                ),
                                child: Text(
                                  'Enter the text.',
                                  style: MyStyle.tx12B.copyWith(
                                    fontSize: 10,
                                    color: MyColor.white.withOpacity(0.7),
                                  ),
                                ),
                              ),
                              // Container(
                              //   height: 22.0,
                              //   decoration: kGradientBoxDecoration,
                              //   child: Padding(
                              //     padding: EdgeInsets.all(2.0),
                              //     child: Container(
                              //       child: Text("Button Title with your style"),
                              //       decoration: KInnerDecoration,
                              //     ),
                              //   ),
                              // ),
                              const SizedBox(
                                width: 8,
                              ),
                              InkWell(
                                onTap: () {
                                  supportSheet();
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(8.0),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: MyColor.yellowamber,
                                  ),
                                  height: 32,
                                  width: 32,
                                  child: Image.asset(
                                    'assets/icons/balloon.png',
                                    height: 24,
                                    width: 24,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),

                              Container(
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: MyColor.purpleGrad,
                                ),
                                height: 32,
                                width: 32,
                                child: Image.asset(
                                  'assets/icons/love.png',
                                  height: 16,
                                  width: 16,
                                ),
                              ),
                              //  //  //  For Vertical Animation
                              // Column(
                              //   children: [
                              //     Image.asset(
                              //       'assets/icons/fade.png',
                              //       width: 45,
                              //       height: 252,
                              //     ),
                              //   ],
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget closeDialog() {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      titlePadding: const EdgeInsets.only(top: 20),
      title: const Text(
        'Exit',
        style: MyStyle.tx17B,
        textAlign: TextAlign.center,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Are you sure you want to end the\n broadcast?',
            style: MyStyle.tx13B.copyWith(fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      contentPadding: const EdgeInsets.only(top: 5, bottom: 20),
      actionsPadding: const EdgeInsets.all(0),
      actions: [
        const Divider(
          height: 0,
          thickness: 0,
          indent: 0,
          endIndent: 0,
          // color: Colors.grey,
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Close',
                  style: MyStyle.tx17B.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: MyColor.lred),
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
                // color: Colors.grey,
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, homeRoute);
                },
                child: Text(
                  'End',
                  style: MyStyle.tx17B.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: MyColor.iosblue),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  //After Live Broadcast

  void prodSheet() {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return StatefulBuilder(builder: (context, setState) {
          return SizedBox(
            // width: 375,
            height: MediaQuery.sizeOf(context).height * 0.8,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 15.0),
                  // Top Row
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Product Sold
                      Container(
                        height: 32,
                        width: 132,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: MyColor.orange,
                        ),
                        child: Center(
                          child: Text(
                            '6 products sold',
                            style: MyStyle.tx13B.copyWith(color: MyColor.white),
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
                          color: MyColor.black.withOpacity(0.05),
                        ),
                        child: Center(
                          child: Text(
                            '0 shopping carts',
                            style: MyStyle.tx13B.copyWith(
                              color: MyColor.black.withOpacity(0.5),
                            ),
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
                ),
                Expanded(
                  child: SingleChildScrollView(
                      child: Column(
                    children: [
                      // Images for 1st Row
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 9.0, vertical: 8.0),
                        child: Expanded(
                          child: Row(
                            children: [
                              // 1st Image
                              InkWell(
                                onTap: () {
                                  detailSheet();
                                  // setState(() {
                                  //   isModelProduct == true
                                  //       ? supportSheet()
                                  //       : detailSheet();
                                  // }
                                  // );
                                },
                                child: Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.only(top: 15.0),
                                    color: MyColor.black.withOpacity(0.05),
                                    height: 236,
                                    width: 172,
                                    child: Column(
                                      children: [
                                        Stack(children: [
                                          Image.asset(
                                            'assets/images/img1.png',
                                            height: 172,
                                            width: 172,
                                          ),
                                          Positioned(
                                            top: 10,
                                            left: 10,
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                color: MyColor.purple,
                                              ),
                                              child: const Text(
                                                'It\'s almost',
                                                style: MyStyle.tx10W,
                                              ),
                                            ),
                                          ),
                                        ]),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 6.0,
                                                      vertical: 2.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Sports shoes with...',
                                                    style: MyStyle.tx14W
                                                        .copyWith(
                                                            color:
                                                                MyColor.black,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            letterSpacing: 0.33,
                                                            fontSize: 12),
                                                  ),
                                                  const Row(
                                                    children: [
                                                      Text(
                                                        '10%',
                                                        style: MyStyle.tx13P,
                                                      ),
                                                      SizedBox(
                                                        width: 5,
                                                      ),
                                                      Text('39,000 won'),
                                                    ],
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
                              ),
                              const SizedBox(
                                width: 10,
                              ),

                              // 2nd Image
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return soldDialog();
                                        });
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.only(top: 15.0),
                                    color: MyColor.black.withOpacity(0.05),
                                    height: 236,
                                    width: 172,
                                    child: Column(
                                      children: [
                                        Stack(
                                          children: [
                                            Image.asset(
                                              'assets/images/img2.png',
                                              height: 172,
                                              width: 172,
                                            ),
                                            Positioned(
                                              top: 10,
                                              left: 10,
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  color: MyColor.black,
                                                ),
                                                child: const Text(
                                                  'Sold out',
                                                  style: MyStyle.tx10W,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 6.0, vertical: 2.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Golf club',
                                                    style: MyStyle.tx14W
                                                        .copyWith(
                                                            color:
                                                                MyColor.black,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            letterSpacing: 0.33,
                                                            fontSize: 12),
                                                  ),
                                                  const Row(
                                                    children: [
                                                      Text(
                                                        '20%',
                                                        style: MyStyle.tx13P,
                                                      ),
                                                      SizedBox(
                                                        width: 5,
                                                      ),
                                                      Text('310,000 won'),
                                                    ],
                                                  ),
                                                ],
                                              ),
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
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 6.0, vertical: 2.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Golf ball set',
                                                  style: MyStyle.tx14W.copyWith(
                                                      color: MyColor.black,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      letterSpacing: 0.33,
                                                      fontSize: 12),
                                                ),
                                                const Row(
                                                  children: [
                                                    Text(
                                                      '10%',
                                                      style: MyStyle.tx13P,
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text('60,000 won'),
                                                  ],
                                                ),
                                              ],
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
                                  width: 172,
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        'assets/images/img4.png',
                                        height: 172,
                                        width: 172,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 6.0, vertical: 2.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'A white cap',
                                                  style: MyStyle.tx14W.copyWith(
                                                      color: MyColor.black,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      letterSpacing: 0.33,
                                                      fontSize: 12),
                                                ),
                                                const Row(
                                                  children: [
                                                    Text(
                                                      '10%',
                                                      style: MyStyle.tx13P,
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text('39,000 won'),
                                                  ],
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 6.0, vertical: 2.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Sports shoes with...',
                                                  style: MyStyle.tx14W.copyWith(
                                                      color: MyColor.black,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      letterSpacing: 0.33,
                                                      fontSize: 12),
                                                ),
                                                const Row(
                                                  children: [
                                                    Text(
                                                      '10%',
                                                      style: MyStyle.tx13P,
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text('39,000 won'),
                                                  ],
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 6.0, vertical: 2.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Golf club',
                                                  style: MyStyle.tx14W.copyWith(
                                                      color: MyColor.black,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      letterSpacing: 0.33,
                                                      fontSize: 12),
                                                ),
                                                const Row(
                                                  children: [
                                                    Text(
                                                      '20%',
                                                      style: MyStyle.tx13P,
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text('310,000 won'),
                                                  ],
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
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                      // : Column(
                      //     children: [
                      //       Image.asset(
                      //         'assets/images/img3.png',
                      //         height: 352,
                      //         width: 352,
                      //       ),
                      //
                      //       // Bottom Text
                      //       Row(
                      //         children: [
                      //           Text(
                      //             '11 types of vivid golf balls',
                      //             style: MyStyle.tx16B.copyWith(
                      //               fontFamily: 'NotoSansKR-Medium',
                      //               fontSize: 14,
                      //               fontWeight: FontWeight.w700,
                      //             ),
                      //           ),
                      //           const SizedBox(
                      //             width: 20,
                      //           ),
                      //           RichText(
                      //             text: TextSpan(
                      //               children: [
                      //                 TextSpan(
                      //                   text: 'the rate of discount ',
                      //                   style: MyStyle.tx14W.copyWith(
                      //                     color: MyColor.purple,
                      //                     fontSize: 12,
                      //                     fontWeight: FontWeight.w100,
                      //                     fontFamily: 'NotoSansKR-Regular',
                      //                   ),
                      //                 ),
                      //                 TextSpan(
                      //                   text: '10%',
                      //                   style: MyStyle.tx14W.copyWith(
                      //                     color: MyColor.purple,
                      //                     // fontSize: 13,
                      //                     fontWeight: FontWeight.w300,
                      //                     fontFamily: 'NotoSansKR-SemiBold',
                      //                   ),
                      //                 ),
                      //               ],
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //
                      //       Row(
                      //         children: [
                      //           Text(
                      //             '36,000',
                      //             style: MyStyle.tx13B.copyWith(
                      //                 // fontWeight: FontWeight.w300,
                      //                 fontFamily: 'NotoSansKR-SemiBold'),
                      //           ),
                      //           Text(
                      //             'won   |   ',
                      //             style: MyStyle.tx13B.copyWith(
                      //               fontWeight: FontWeight.w100,
                      //               fontFamily: 'NotoSansKR-Regular',
                      //             ),
                      //           ),
                      //           Text(
                      //             '40,000',
                      //             style: MyStyle.tx13B.copyWith(
                      //               fontFamily: 'NotoSansKR-Regular',
                      //               color: MyColor.black.withOpacity(0.7),
                      //               decoration: TextDecoration.lineThrough,
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //       const SizedBox(
                      //         height: 15,
                      //       ),
                      //       Row(
                      //         children: [
                      //           Image.asset(
                      //             'assets/images/badge.png',
                      //             width: 10,
                      //             height: 13,
                      //           ),
                      //           Text(
                      //             ' Promoted celebrity list',
                      //             style: MyStyle.tx14W.copyWith(
                      //               fontWeight: FontWeight.w500,
                      //               color: MyColor.purple,
                      //             ),
                      //           ),
                      //           const SizedBox(
                      //             height: 10,
                      //           ),
                      //         ],
                      //       ),
                      //       Expanded(
                      //         child: Row(
                      //           children: [
                      //             Image.asset(
                      //               'assets/images/avtar4.png',
                      //               height: 72,
                      //               width: 72,
                      //             ),
                      //             Image.asset(
                      //               'assets/images/avtar5.png',
                      //               height: 72,
                      //               width: 72,
                      //             ),
                      //             Image.asset(
                      //               'assets/images/avtar6.png',
                      //               height: 72,
                      //               width: 72,
                      //             ),
                      //             Image.asset(
                      //               'assets/images/avtar7.png',
                      //               height: 72,
                      //               width: 72,
                      //             ),
                      //             Image.asset(
                      //               'assets/images/avtar8.png',
                      //               height: 72,
                      //               width: 72,
                      //             ),
                      //           ],
                      //         ),
                      //       ),
                      //       Container(
                      //         width: 351,
                      //         height: 476,
                      //         child: const Text(
                      //           'Detail img',
                      //           style: MyStyle.tx20W,
                      //         ),
                      //       )
                      //     ],
                      //   ),
                      ),
                ),
              ],
            ),
          );
        });
      },
    );
  }

  // Table Sheet
  void supportSheet() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (BuildContext context) {
          return SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.8,
            // width: 340,
            width: MediaQuery.sizeOf(context).width,

            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 32,
                        width: 132,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: MyColor.orange,
                        ),
                        child: Center(
                          child: Text(
                            'Sponsorship',
                            style: MyStyle.tx13B.copyWith(color: MyColor.white),
                          ),
                        ),
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
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Expanded(
                      child: Column(
                        children: [
                          // Heading
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Username',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'NotoSansKR-SemiBold',
                                ),
                              ),
                              Text(
                                'Hour',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'NotoSansKR-SemiBold',
                                ),
                              ),
                              Text(
                                'Sponsored Points',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'NotoSansKR-SemiBold',
                                ),
                              ),
                            ],
                          ),

                          // Table
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Kim Mint',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                              Text(
                                '19:02',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                              Text(
                                '10,000 points ',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Kim Mint',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                              Text(
                                '19:02',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                              Text(
                                '10,000 points ',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Kim Mint',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                              Text(
                                '19:02',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                              Text(
                                '10,000 points ',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Kim Mint',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                              Text(
                                '19:02',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                              Text(
                                '10,000 points ',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Kim Mint',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                              Text(
                                '19:02',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                              Text(
                                '10,000 points ',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Kim Mint',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                              Text(
                                '19:02',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                              Text(
                                '10,000 points ',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Kim Mint',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                              Text(
                                '19:02',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                              Text(
                                '10,000 points ',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Kim Mint',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                              Text(
                                '19:02',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                              Text(
                                '10,000 points ',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Kim Mint',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                              Text(
                                '19:02',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                              Text(
                                '10,000 points ',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Kim Mint',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                              Text(
                                '19:02',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                              Text(
                                '10,000 points ',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Kim Mint',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                              Text(
                                '19:02',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                              Text(
                                '10,000 points ',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Kim Mint',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                              Text(
                                '19:02',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                              Text(
                                '10,000 points ',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Kim Mint',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                              Text(
                                '19:02',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                              Text(
                                '10,000 points ',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Kim Mint',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                              Text(
                                '19:02',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                              Text(
                                '10,000 points ',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Kim Mint',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                              Text(
                                '19:02',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                              Text(
                                '10,000 points ',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Kim Mint',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                              Text(
                                '19:02',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                              Text(
                                '10,000 points ',
                                style: MyStyle.tx14W.copyWith(
                                  color: MyColor.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  // Sold Out Dialog
  Widget soldDialog() {
    return AlertDialog(
      title: Center(
        child: Text(
          'This item is out of stock.',
          textAlign: TextAlign.center,
          style: MyStyle.tx17B.copyWith(fontFamily: 'NotoSansKR-Medium'),
        ),
      ),
      // actionsPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 4.0),
      // contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 12.0),
      actions: [
        const Divider(
          thickness: 0,
          endIndent: 0,
          indent: 0,
        ),
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
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
        )
      ],
    );
  }

  //  The product Detail sheet

  void detailSheet() {
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
          // height: 652,
          // width: 375,

          //Top UI
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Indicators
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/icons/leftArrow.png',
                      height: 24,
                      width: 24,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/icons/cancel.png',
                        height: 24,
                        width: 24,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height - 230,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    //Stack ke andar UI
                    Positioned(
                      top: 40,
                      right: 0,
                      left: 0,
                      child: Expanded(
                        child: SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  'assets/images/img3.png',
                                  height: 352,
                                  width: 352,
                                ),
                              ),

                              // Bottom Text
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  children: [
                                    Text(
                                      '11 types of vivid golf balls',
                                      style: MyStyle.tx16B.copyWith(
                                        fontFamily: 'NotoSansKR-Medium',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 14,
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
                              ),

                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
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
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
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
                                margin: const EdgeInsets.all(15.0),
                                width: 351,
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
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Text('Delivery information',
                                        style: MyStyle.tx14B),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Divider(
                                      thickness: 0,
                                    ),
                                    const Text(
                                      '- Delivery: CJ Logistics \n'
                                      '- Shipping fee: 3,000 won (Additional 5,000 won for '
                                      'mountainous areas/Jeju Island)',
                                      style: MyStyle.tx14B,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Divider(
                                      thickness: 0,
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
                                    ),
                                    const Divider(
                                      thickness: 0,
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
                                    ),
                                    const Divider(
                                      thickness: 0,
                                    ),
                                    ExpansionTile(
                                      title: const Text(
                                        'Seller information',
                                        style: MyStyle.tx14B,
                                      ),
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void shoppingBasket() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (BuildContext context) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
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
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/img3.png',
                        height: 172,
                        width: 172,
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
                                Text('10%', style: MyStyle.tx13P),
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
                Divider(thickness: 0),
                DropdownMenu(dropdownMenuEntries: dropdownMenuEntries),
              ],
            ),
          );
        });
  }
}
