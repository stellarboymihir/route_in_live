import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:route_in_live/authentication/register/profile/profile_settings.dart';
import 'package:route_in_live/values/MyColor.dart';
import 'package:route_in_live/values/MyStyle.dart';

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

  @override
  Widget build(BuildContext context) {
    //   Container Starts

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8.0),
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
                      horizontal: 12.0, vertical: 8.0),
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
                        width: 172,
                      ),
                      Container(
                        alignment: Alignment.bottomRight,
                        height: 24,
                        width: 64,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: MyColor.purple,
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Follow',
                            style: MyStyle.tx12P,
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
                    height: 350,
                  ),
                  itemCount: 5,
                  itemBuilder:
                      (BuildContext context, int index, int realIndex) {
                    return Image.asset(
                      'assets/images/img8.png',
                      fit: BoxFit.fill,
                      height: 351,
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
                      child: Image.asset(
                        'assets/icons/heart.png',
                        height: 24,
                        width: 24,
                      ),
                    ),
                    Image.asset(
                      'assets/icons/comment.png',
                      height: 24,
                      width: 24,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0, right: 60.0),
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
                                  width: 20,
                                  height: 5.0,
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
                    const SizedBox(
                      width: 5,
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
                      width: 10,
                    ),
                    Container(
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
                  margin: EdgeInsets.all(8.0),
                  padding: EdgeInsets.only(left: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: MyColor.black.withOpacity(0.05),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Enter the comments.',
                        style: MyStyle.tx12B,
                      ),
                      Container(
                        height: 32,
                        width: 51,
                        padding: EdgeInsets.all(8.0),
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
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            // height: MediaQuery.of(context).size.height,
            // width: MediaQuery.of(context).size.width,

            color: MyColor.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 8.0),
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
                        width: 185,
                      ),
                      Container(
                        alignment: Alignment.bottomRight,
                        height: 24,
                        width: 64,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: MyColor.purple,
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Follow',
                            style: MyStyle.tx12P,
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
                    height: 350,
                  ),
                  itemCount: 5,
                  itemBuilder:
                      (BuildContext context, int index, int realIndex) {
                    return Image.asset(
                      'assets/images/img8.png',
                      fit: BoxFit.fill,
                      height: 351,
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
                      child: Image.asset(
                        'assets/icons/heart.png',
                        height: 24,
                        width: 24,
                      ),
                    ),
                    Image.asset(
                      'assets/icons/comment.png',
                      height: 24,
                      width: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imgList.asMap().entries.map((entry) {
                        print(entry);
                        return Row(
                          children: [
                            GestureDetector(
                              onTap: () => _controller.animateToPage(entry.key),
                              child: Container(
                                padding: const EdgeInsets.all(8.0),
                                width: 20,
                                height: 5.0,
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
                    const SizedBox(
                      width: 5,
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
                      width: 10,
                    ),
                    Container(
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
                  margin: EdgeInsets.all(8.0),
                  padding: EdgeInsets.only(left: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: MyColor.black.withOpacity(0.05),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Enter the comments.',
                        style: MyStyle.tx12B,
                      ),
                      Container(
                        height: 32,
                        width: 51,
                        padding: EdgeInsets.all(8.0),
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
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
