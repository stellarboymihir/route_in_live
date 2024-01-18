import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:route_in_live/authentication/register/profile/profile_settings.dart';
import 'package:route_in_live/values/MyColor.dart';
import 'package:route_in_live/values/MyStyle.dart';

import '../../../constants/routes.dart';

class AllScreen extends StatefulWidget {
  const AllScreen({super.key});

  @override
  State<AllScreen> createState() => _AllScreenState();
}

class _AllScreenState extends State<AllScreen> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final List<String> imgList = [
    'assets/images/img8.png',
    'assets/images/img8.png',
    'assets/images/img8.png',
    'assets/images/img8.png',
    'assets/images/img8.png',
  ];

  List<bool> onLikeClick = <bool>[false, false];
  List<bool> isFollowing = <bool>[false, false];

  TextEditingController searchingBar = TextEditingController();
  // bool isClicked = false;

  final List<Map<String, dynamic>> gridList = [
    {
      "image": 'assets/images/img1.png',
      "title": 'Sports shoes with...',
      "subtitle": '39,000 won',
      'isClicked': false,
    },
    {
      "image": 'assets/images/img2.png',
      "title": 'Golf club',
      "subtitle": '310,000 won',
      'isClicked': false,
    },
    {
      "image": 'assets/images/img3.png',
      "title": 'Golf ball Set',
      "subtitle": '39,000 won',
      'isClicked': false,
    },
    {
      "image": 'assets/images/img4.png',
      "title": 'A white cap',
      "subtitle": '60,000 won',
      'isClicked': false,
    },
    {
      "image": 'assets/images/img5.png',
      "title": 'Sports shoes with...',
      "subtitle": '39,000 won',
      'isClicked': false,
    },
    {
      "image": 'assets/images/img6.png',
      "title": 'Sports shoes with...',
      "subtitle": '39,000 won',
      'isClicked': false,
    },
  ];
  @override
  Widget build(BuildContext context) {
    //   Container Starts

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10.0),
            // height: MediaQuery.of(context).size.height,
            // width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: MyColor.white,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 6.0, vertical: 10.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/img7.png',
                        fit: BoxFit.fill,
                        width: 40,
                        height: 40,
                      ),
                      const SizedBox(
                        width: 13,
                      ),
                      Text(
                        'Run',
                        style: MyStyle.tx16B.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        width: 175,
                      ),
                      InkWell(
                        onTap: () {
                          isFollowing[0] = true;
                        },
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isFollowing[0] = !isFollowing[0];
                            });
                          },
                          child: Container(
                            alignment: Alignment.bottomRight,
                            height: 24,
                            width: 66,
                            padding: const EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(12),
                              color: isFollowing[0]
                                  ? MyColor.white
                                  : MyColor.purple,
                            ),
                            child: Center(
                              child: isFollowing[0]
                                  ? Text(
                                      'Follow',
                                      style: MyStyle.tx12B.copyWith(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11,
                                      ),
                                    )
                                  : Text(
                                      'Following',
                                      style: MyStyle.tx12W.copyWith(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11,
                                      ),
                                    ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Carousel Slider
                CarouselSlider.builder(
                  carouselController: _controller,
                  options: CarouselOptions(
                    padEnds: false,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    },
                    enableInfiniteScroll: false,
                    height: 264,
                  ),
                  itemCount: 5,
                  itemBuilder:
                      (BuildContext context, int index, int realIndex) {
                    return Image.asset(
                      'assets/images/img8.png',
                      fit: BoxFit.fill,
                      height: 264,
                    );
                  },
                ),
                const SizedBox(
                  height: 10,
                ),

                //Slider Indicator
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          onLikeClick[0] = !onLikeClick[0];
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: onLikeClick[0]
                            ? Image.asset(
                                'assets/icons/hearto.png',
                                height: 24,
                                width: 24,
                              )
                            : Image.asset(
                                'assets/icons/heart.png',
                                height: 24,
                                width: 24,
                              ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, commentRoute);
                      },
                      child: Image.asset(
                        'assets/icons/comment.png',
                        height: 24,
                        width: 24,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 55.0, right: 55.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: imgList.asMap().entries.map((entry) {
                          print(entry);
                          return Row(
                            children: [
                              GestureDetector(
                                onTap: () =>
                                    _controller.animateToPage(entry.key),
                                child: Container(
                                  padding: const EdgeInsets.all(8.0),
                                  width: 15,
                                  height: 4.0,
                                  margin: const EdgeInsets.only(right: 10),
                                  color: _current == entry.key
                                      ? MyColor.orange
                                      : MyColor.grey,
                                  // color: MyColor.orange,
                                ),
                              ),
                            ],
                          );
                        }).toList(),
                      ),
                    ),
                    Image.asset(
                      'assets/icons/share.png',
                      alignment: Alignment.topLeft,
                      height: 24,
                      width: 24,
                    ),
                  ],
                ),

                // Likes Section
                Padding(
                  padding: const EdgeInsets.only(
                      left: 8.0, right: 8.0, top: 4.0, bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '150 likes',
                        style: MyStyle.tx12B.copyWith(
                          fontWeight: FontWeight.w300,
                          fontFamily: 'NotoSansKR-Regular',
                          letterSpacing: 0.33,
                        ),
                      ),
                      Text(
                        '3 weeks ago',
                        style: MyStyle.tx11.copyWith(
                          fontWeight: FontWeight.w300,
                          fontFamily: 'NotoSansKR-Thin',
                          letterSpacing: 0.33,
                          color: MyColor.black.withOpacity(0.7),
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  thickness: 0,
                ),

                //   Image Row
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/img1.png',
                        height: 44,
                        width: 44,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Running shoes with comfo...',
                          style: MyStyle.tx13B.copyWith(
                            letterSpacing: 0.33,
                          ),
                        ),
                        Text(
                          'Running ㅣ 50,000 won',
                          style: MyStyle.tx11.copyWith(
                            fontFamily: 'NotoSansKR-Thin',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    InkWell(
                      onTap: () {
                        prizeSheet();
                      },
                      child: Container(
                        height: 30,
                        width: 92,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: MyColor.yellowamber,
                        ),
                        child: Center(
                          child: Text(
                            'All the prizes',
                            style: MyStyle.tx12W.copyWith(
                              fontWeight: FontWeight.w400,
                              fontFamily: 'NotoSansKR-Regular',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(
                  thickness: 0,
                ),

                //   Run Row
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
                      child: Text(
                        'Run',
                        textAlign: TextAlign.start,
                        style: MyStyle.tx14B.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
                      child: Text(
                        'Wow, there are so many people. '
                        'I wanted to finish the \n race but I gave up.'
                        ' I felt at ease when I gave up.',
                        style: MyStyle.tx12B,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 32,
                  width: 340,
                  margin: const EdgeInsets.all(8.0),
                  padding: const EdgeInsets.only(left: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: MyColor.black.withOpacity(0.05),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Enter the comments.',
                        style: MyStyle.tx12B.copyWith(
                          color: MyColor.black.withOpacity(0.7),
                        ),
                      ),
                      Container(
                        height: 32,
                        width: 51,
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: MyColor.orange,
                        ),
                        child: Center(
                          child: Text(
                            'Post',
                            style: MyStyle.tx11W.copyWith(
                              fontFamily: 'NotoSansKR-Regular',
                              fontWeight: FontWeight.w400,
                              color: MyColor.white.withOpacity(0.7),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            // height: MediaQuery.of(context).size.height,
            // width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: MyColor.white,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 6.0, vertical: 10.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/img9.png',
                        fit: BoxFit.fill,
                        width: 40,
                        height: 40,
                      ),
                      const SizedBox(
                        width: 13,
                      ),
                      Text(
                        'Merry00',
                        style: MyStyle.tx16B.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        width: 145,
                      ),
                      InkWell(
                        onTap: () {
                          isFollowing[1] = true;
                        },
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isFollowing[1] = !isFollowing[1];
                            });
                          },
                          child: Container(
                            alignment: Alignment.bottomRight,
                            height: 24,
                            width: 66,
                            padding: const EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(12),
                              color: isFollowing[1]
                                  ? MyColor.white
                                  : MyColor.purple,
                            ),
                            child: Center(
                              child: isFollowing[1]
                                  ? Text(
                                      'Follow',
                                      style: MyStyle.tx12B.copyWith(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11,
                                      ),
                                    )
                                  : Text(
                                      'Following',
                                      style: MyStyle.tx12W.copyWith(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11,
                                      ),
                                    ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Carousel Slider
                CarouselSlider.builder(
                  carouselController: _controller,
                  options: CarouselOptions(
                    padEnds: false,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    },
                    enableInfiniteScroll: false,
                    // enlargeCenterPage: false,
                    height: 264,
                  ),
                  itemCount: 5,
                  itemBuilder:
                      (BuildContext context, int index, int realIndex) {
                    return Image.asset(
                      'assets/images/img10.png',
                      fit: BoxFit.fill,
                      height: 264,
                    );
                  },
                ),
                const SizedBox(
                  height: 10,
                ),

                //Slider Indicator
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            onLikeClick[1] = !onLikeClick[1];
                          });
                        },
                        child: onLikeClick[1]
                            ? Image.asset(
                                'assets/icons/heart.png',
                                height: 24,
                                width: 24,
                              )
                            : Image.asset(
                                'assets/icons/hearto.png',
                                height: 24,
                                width: 24,
                              ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, commentRoute);
                      },
                      child: Image.asset(
                        'assets/icons/comment.png',
                        height: 24,
                        width: 24,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 55.0, right: 55.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: imgList.asMap().entries.map((entry) {
                          print(entry);
                          return Row(
                            children: [
                              GestureDetector(
                                onTap: () =>
                                    _controller.animateToPage(entry.key),
                                child: Container(
                                  padding: const EdgeInsets.all(8.0),
                                  width: 15,
                                  height: 4.0,
                                  margin: const EdgeInsets.only(right: 10),
                                  color: _current == entry.key
                                      ? MyColor.orange
                                      : MyColor.grey,
                                  // color: MyColor.orange,
                                ),
                              ),
                            ],
                          );
                        }).toList(),
                      ),
                    ),
                    Image.asset(
                      'assets/icons/share.png',
                      alignment: Alignment.topLeft,
                      height: 24,
                      width: 24,
                    ),
                  ],
                ),

                // Likes Section
                Padding(
                  padding: const EdgeInsets.only(
                      left: 8.0, right: 8.0, top: 4.0, bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '150 likes',
                        style: MyStyle.tx12B.copyWith(
                          fontWeight: FontWeight.w300,
                          fontFamily: 'NotoSansKR-Regular',
                          letterSpacing: 0.33,
                        ),
                      ),
                      Text(
                        '3 weeks ago',
                        style: MyStyle.tx11.copyWith(
                          fontWeight: FontWeight.w300,
                          fontFamily: 'NotoSansKR-Thin',
                          letterSpacing: 0.33,
                          color: MyColor.black.withOpacity(0.7),
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  thickness: 0,
                ),

                //   Run Row
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
                      child: Text(
                        'Merry00',
                        textAlign: TextAlign.start,
                        style: MyStyle.tx14B.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
                      child: Text(
                        'Merry Christmas!',
                        style: MyStyle.tx12B,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 32,
                  width: 340,
                  margin: const EdgeInsets.all(8.0),
                  padding: const EdgeInsets.only(left: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: MyColor.black.withOpacity(0.05),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Enter the comments.',
                        style: MyStyle.tx12B.copyWith(
                          color: MyColor.black.withOpacity(0.7),
                        ),
                      ),
                      Container(
                        height: 32,
                        width: 51,
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: MyColor.orange,
                        ),
                        child: Center(
                          child: Text(
                            'Post',
                            style: MyStyle.tx11W.copyWith(
                              fontFamily: 'NotoSansKR-Regular',
                              fontWeight: FontWeight.w400,
                              color: MyColor.white.withOpacity(0.7),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void prizeSheet() {
    {
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
              height: MediaQuery.sizeOf(context).height * 0.8,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 12.0, top: 15.0, bottom: 5.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset(
                            'assets/icons/cancel.png',
                            height: 20,
                            width: 20,
                          ),
                        ),
                      ),
                    ],
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
                                    // detailSheet();
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
                                                                  FontWeight
                                                                      .w700,
                                                              letterSpacing:
                                                                  0.33,
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
                                            return outOfStockDialog();
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
                                                        BorderRadius.circular(
                                                            50),
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
                                                                  FontWeight
                                                                      .w700,
                                                              letterSpacing:
                                                                  0.33,
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
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 6.0,
                                                      vertical: 2.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'A white cap',
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
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 6.0,
                                                      vertical: 2.0),
                                              child: Column(
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
                    )),
                  ),
                ],
              ),
            );
          });
        },
      );
    }
  }

  Widget outOfStockDialog() {
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
      actionsPadding:
          const EdgeInsets.only(top: 0.0, right: 0.0, left: 0.0, bottom: 15.0),
      actions: [
        const SizedBox(
          // width: MediaQuery.of(context).size.width * 1.0,
          child: Divider(
            thickness: 0,
            endIndent: 0,
            indent: 0,
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.pop(context);
            Navigator.pop(context);
          },
          child: SizedBox(
            height: 25,
            child: Center(
              child: Text(
                'Close',
                textAlign: TextAlign.center,
                style: MyStyle.tx17B.copyWith(
                  fontWeight: FontWeight.w400,
                  fontFamily: 'NotoSansKR-Regular',
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
