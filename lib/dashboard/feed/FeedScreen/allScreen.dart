import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:route_in_live/values/MyColor.dart';
import 'package:route_in_live/values/MyStyle.dart';

class AllScreen extends StatefulWidget {
  const AllScreen({super.key});

  @override
  State<AllScreen> createState() => _AllScreenState();
}

class _AllScreenState extends State<AllScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
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
                CarouselSlider(
                  options: CarouselOptions(
                    enlargeFactor: 1.0,
                    // aspectRatio: 16 / 9,
                    initialPage: 0,
                    padEnds: false,
                    enableInfiniteScroll: false,
                    // enlargeCenterPage: false,
                    height: 350.0,
                  ),
                  items: [1, 2, 3, 4, 5].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Wrap(
                          spacing: 4.0, // gap between adjacent images
                          runSpacing: 2.0, // gap between lines
                          direction: Axis.horizontal,
                          children: [
                            Image.asset(
                              'assets/images/img8.png',
                              fit: BoxFit.fill,
                              height: 351,
                              // width: 264,
                            ),
                            Image.asset(
                              'assets/images/img8.png',
                              height: 351,
                              width: 264,
                            ),
                            Image.asset(
                              'assets/images/img8.png',
                              height: 351,
                              width: 264,
                            ),
                            Image.asset(
                              'assets/images/img8.png',
                              height: 351,
                              width: 264,
                            ),
                            Image.asset(
                              'assets/images/img8.png',
                              height: 351,
                              width: 264,
                            ),
                            Image.asset(
                              'assets/images/img8.png',
                              height: 351,
                              width: 264,
                            ),
                            Image.asset(
                              'assets/images/img8.png',
                              height: 351,
                              width: 264,
                            ),
                            Image.asset(
                              'assets/images/img8.png',
                              height: 351,
                              width: 264,
                            ),
                            Image.asset(
                              'assets/images/img8.png',
                              height: 351,
                              width: 264,
                            ),
                          ],
                        );
                      },
                    );
                  }).toList(),
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/heart.png',
                      height: 24,
                      width: 24,
                    ),
                    Image.asset(
                      'assets/icons/comment.png',
                      height: 24,
                      width: 24,
                    ),
                    Image.asset(
                      'assets/icons/share.png',
                      height: 24,
                      width: 24,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
