import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:route_in_live/values/MyColor.dart';
import 'package:route_in_live/values/MyStyle.dart';

class LikeScreen extends StatefulWidget {
  const LikeScreen({super.key});

  @override
  State<LikeScreen> createState() => _LikeScreenState();
}

class _LikeScreenState extends State<LikeScreen> {
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
    return SingleChildScrollView(
      child: Column(
        children: [
          // 1st Row
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: MyColor.white,
                ),
                height: 220,
                width: 172,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, top: 8.0, right: 8.0, bottom: 8.0),
                          child: Image.asset(
                            'assets/images/img7.png',
                            height: 32,
                            width: 32,
                          ),
                        ),
                        Center(
                          child: Text(
                            '달리기',
                            style: MyStyle.tx12B.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
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
                        height: 156,
                      ),
                      itemCount: 5,
                      itemBuilder:
                          (BuildContext context, int index, int realIndex) {
                        return Column(
                          children: [
                            Stack(
                              children: [
                                Image.asset(
                                  'assets/images/img23.png',
                                  fit: BoxFit.fill,
                                  height: 156,
                                  width: 156,
                                ),
                                Positioned(
                                  bottom: 10,
                                  right: 10,
                                  left: 10,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children:
                                        imgList.asMap().entries.map((entry) {
                                      print(entry);
                                      return Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () => _controller
                                                .animateToPage(entry.key),
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              width: 12,
                                              height: 3.0,
                                              margin: const EdgeInsets.only(
                                                  right: 10),
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
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                    // Image.asset(
                    //   'assets/images/img23.png',
                    //   height: 156,
                    //   width: 156,
                    // ),
                  ],
                ),
                // child:
              ),
              Container(
                margin: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: MyColor.white,
                ),
                height: 220,
                width: 172,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, top: 8.0, right: 8.0, bottom: 8.0),
                          child: Image.asset(
                            'assets/images/img20.png',
                            height: 32,
                            width: 32,
                          ),
                        ),
                        Center(
                          child: Text(
                            'MoveSteady',
                            style: MyStyle.tx12B.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/images/img15.png',
                      height: 156,
                      width: 156,
                    ),
                  ],
                ),
                // child:
              ),
            ],
          ),

          //   2nd Row
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: MyColor.white,
                ),
                height: 220,
                width: 172,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, top: 8.0, right: 8.0, bottom: 8.0),
                          child: Image.asset(
                            'assets/images/img21.png',
                            height: 32,
                            width: 32,
                          ),
                        ),
                        Center(
                          child: Text(
                            'Snowman',
                            style: MyStyle.tx12B.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/images/img16.png',
                      height: 156,
                      width: 156,
                    ),
                  ],
                ),
                // child:
              ),
              Container(
                margin: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: MyColor.white,
                ),
                height: 220,
                width: 172,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, top: 8.0, right: 8.0, bottom: 8.0),
                          child: Image.asset(
                            'assets/images/img22.png',
                            height: 32,
                            width: 32,
                          ),
                        ),
                        Center(
                          child: Text(
                            '프로틴보이',
                            style: MyStyle.tx12B.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/images/img17.png',
                      height: 156,
                      width: 156,
                    ),
                  ],
                ),
                // child:
              ),
            ],
          ),

          //  3rd Row
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: MyColor.white,
                ),
                height: 220,
                width: 172,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, top: 8.0, right: 8.0, bottom: 8.0),
                          child: Image.asset(
                            'assets/images/img24.png',
                            height: 32,
                            width: 32,
                          ),
                        ),
                        Center(
                          child: Text(
                            'WalkandWork',
                            style: MyStyle.tx12B.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/images/img18.png',
                      height: 156,
                      width: 156,
                    ),
                  ],
                ),
                // child:
              ),
              Container(
                margin: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: MyColor.white,
                ),
                height: 220,
                width: 172,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, top: 8.0, right: 8.0, bottom: 8.0),
                          child: Image.asset(
                            'assets/images/img25.png',
                            height: 32,
                            width: 32,
                          ),
                        ),
                        Center(
                          child: Text(
                            'Chiller',
                            style: MyStyle.tx12B.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/images/img19.png',
                      height: 156,
                      width: 156,
                    ),
                  ],
                ),
                // child:
              ),
            ],
          ),
        ],
      ),
    );
  }
}
