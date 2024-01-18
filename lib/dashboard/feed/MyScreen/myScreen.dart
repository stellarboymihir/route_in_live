import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:route_in_live/values/MyColor.dart';

import '../../../constants/routes.dart';
import '../../../values/MyStyle.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
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
  var tabMenuChange = 'All';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, writingRoute);
        },
        shape: CircleBorder(
          side: BorderSide.none,
        ),
        backgroundColor: MyColor.purple,
        child: const Icon(
          Icons.add,
          color: MyColor.white,
          size: 28,
        ),
      ),
      body: Container(
        color: MyColor.grey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 16,
                    height: 188,
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: MyColor.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/img7.png',
                              height: 48,
                              width: 48,
                              fit: BoxFit.fill,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Expanded(
                              child: Text(
                                'Run',
                                style: MyStyle.tx16B.copyWith(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                                Navigator.pushNamed(context, searchPageRoute);
                              },
                              child: SizedBox(
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/follower.png',
                                      height: 20,
                                      width: 20,
                                      fit: BoxFit.fill,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: ' Follower',
                                            style: MyStyle.tx14B.copyWith(
                                              fontSize: 14,
                                              color: MyColor.purple,
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' 12,000',
                                            style: MyStyle.tx14B.copyWith(
                                              fontSize: 14,
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
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Let\'s have a healthy life together!',
                          style: MyStyle.tx12B,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 24,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 2.0, horizontal: 10.0),
                              margin: const EdgeInsets.all(2.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: MyColor.orange,
                              ),
                              child: Text(
                                '#  Professional golfer.',
                                style: MyStyle.tx12W.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Container(
                              height: 24,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 2.0, horizontal: 10.0),
                              margin: const EdgeInsets.all(2.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: MyColor.orange,
                              ),
                              child: Text(
                                '#  Tennis',
                                style: MyStyle.tx12W.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Container(
                              height: 24,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 2.0, horizontal: 10.0),
                              margin: const EdgeInsets.all(2.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: MyColor.orange,
                              ),
                              child: Text(
                                '#  Beauty',
                                style: MyStyle.tx12W.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1),
                            border: Border.all(
                              width: 1.0,
                              color: MyColor.orange,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Profile modification',
                              style: MyStyle.tx14O.copyWith(
                                letterSpacing: 0.33,
                                fontFamily: 'NotoSansKR-Regular',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  tabMenuChange == 'Following'
                      ? InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, followingListScreenRoute);
                          },
                          child: Image.asset(
                            'assets/icons/foll.png',
                            height: 28,
                            width: 28,
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
              Container(
                margin: EdgeInsets.all(10.0),
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
                          // InkWell(
                          //   onTap: () {
                          //     isFollowing[0] = true;
                          //   },
                          //   child: InkWell(
                          //     onTap: () {
                          //       setState(() {
                          //         isFollowing[0] = !isFollowing[0];
                          //       });
                          //     },
                          //     child: Container(
                          //       alignment: Alignment.bottomRight,
                          //       height: 24,
                          //       width: 66,
                          //       padding: EdgeInsets.all(2.0),
                          //       decoration: BoxDecoration(
                          //         border: Border.all(
                          //           width: 1,
                          //         ),
                          //         borderRadius: BorderRadius.circular(12),
                          //         color: isFollowing[0]
                          //             ? MyColor.white
                          //             : MyColor.purple,
                          //       ),
                          //       child: Center(
                          //         child: isFollowing[0]
                          //             ? Text(
                          //                 'Follow',
                          //                 style: MyStyle.tx12B.copyWith(
                          //                   fontWeight: FontWeight.w400,
                          //                   fontSize: 11,
                          //                 ),
                          //               )
                          //             : Text(
                          //                 'Following',
                          //                 style: MyStyle.tx12W.copyWith(
                          //                   fontWeight: FontWeight.w400,
                          //                   fontSize: 11,
                          //                 ),
                          //               ),
                          //       ),
                          //     ),
                          //   ),
                          // ),
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
                          padding:
                              const EdgeInsets.only(left: 55.0, right: 55.0),
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
                        InkWell(
                          onTap: () {
                            moreSheet();
                          },
                          child: Image.asset(
                            'assets/icons/more.png',
                            alignment: Alignment.topLeft,
                            height: 24,
                            width: 24,
                          ),
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
                        SizedBox(
                          width: 4,
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 0.0),
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
                            style: MyStyle.tx12B.copyWith(
                              color: MyColor.black.withOpacity(0.7),
                            ),
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
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.all(10.0),
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
                            '달려라',
                            style: MyStyle.tx16B.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(
                            width: 145,
                          ),
                          // InkWell(
                          //   onTap: () {
                          //     isFollowing[1] = true;
                          //   },
                          //   child: InkWell(
                          //     onTap: () {
                          //       setState(() {
                          //         isFollowing[1] = !isFollowing[1];
                          //       });
                          //     },
                          //     child: Container(
                          //       alignment: Alignment.bottomRight,
                          //       height: 24,
                          //       width: 66,
                          //       padding: EdgeInsets.all(2.0),
                          //       decoration: BoxDecoration(
                          //         border: Border.all(
                          //           width: 1,
                          //         ),
                          //         borderRadius: BorderRadius.circular(12),
                          //         color: isFollowing[1]
                          //             ? MyColor.white
                          //             : MyColor.purple,
                          //       ),
                          //       child: Center(
                          //         child: isFollowing[1]
                          //             ? Text(
                          //                 'Follow',
                          //                 style: MyStyle.tx12B.copyWith(
                          //                   fontWeight: FontWeight.w400,
                          //                   fontSize: 11,
                          //                 ),
                          //               )
                          //             : Text(
                          //                 'Following',
                          //                 style: MyStyle.tx12W.copyWith(
                          //                   fontWeight: FontWeight.w400,
                          //                   fontSize: 11,
                          //                 ),
                          //               ),
                          //       ),
                          //     ),
                          //   ),
                          // ),
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
                          'assets/images/img26.png',
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
                          padding: EdgeInsets.all(8.0),
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
                          padding:
                              const EdgeInsets.only(left: 55.0, right: 55.0),
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
                        InkWell(
                          onTap: () {
                            moreSheet();
                          },
                          child: Image.asset(
                            'assets/icons/more.png',
                            alignment: Alignment.topLeft,
                            height: 24,
                            width: 24,
                          ),
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
                            '좋아요 150개',
                            style: MyStyle.tx12B.copyWith(
                              fontWeight: FontWeight.w300,
                              fontFamily: 'NotoSansKR-Regular',
                              letterSpacing: 0.33,
                            ),
                          ),
                          Text(
                            '3주 전',
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
                            '달려라',
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 0.0),
                          child: Text(
                            '우와 사람 진짜 많네요. 저도 완주하고 싶었는데 중도포기 \n '
                            '했어요! 포기하니까 마음이 편하더라고요. 우와 사람 진짜 \n'
                            ' 많네요. 저도 완주하고 싶었는데 중도포기 했어요!\n 포기하니까 '
                            '마음이 편하더라고요.',
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
                            '댓글을 입력해 보세요.',
                            style: MyStyle.tx12B.copyWith(
                              color: MyColor.black.withOpacity(0.7),
                            ),
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
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void moreSheet() {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                height: 132,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'See More',
                        style: MyStyle.tx12B.copyWith(
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                      const Divider(
                        thickness: 0,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.pushNamed(context, editProfileRoute);
                        },
                        child: SizedBox(
                          height: 26,
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                            child: Text(
                              'Edit Post',
                              style: MyStyle.tx16B
                                  .copyWith(fontFamily: 'NotoSansKR-Medium'),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      const Divider(
                        thickness: 0,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return deletePostDialog();
                              });
                        },
                        child: SizedBox(
                          height: 26,
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                            child: Text(
                              'Delete Post',
                              style: MyStyle.tx16B
                                  .copyWith(fontFamily: 'NotoSansKR-Medium'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 48,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: const Center(
                    child: Text(
                      'Cancel',
                      style: MyStyle.tx17B,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        );
      },
    );
  }

  Widget deletePostDialog() {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      titlePadding: const EdgeInsets.only(top: 20),
      title: Text(
        'Are you sure you want to\n delete the post?',
        style: MyStyle.tx17B.copyWith(
          fontSize: 16,
          letterSpacing: 0.41,
        ),
        textAlign: TextAlign.center,
      ),
      // contentPadding: const EdgeInsets.only(top: 5, bottom: 20),
      actionsPadding:
          const EdgeInsets.only(top: 10, left: 0, right: 0, bottom: 0),
      actions: [
        const Divider(
          height: 0,
          thickness: 0,
          indent: 0,
          endIndent: 0,
          color: Colors.grey,
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: SizedBox(
                  // height: 30,
                  child: Text(
                    'Cancel',
                    style: MyStyle.tx17N.copyWith(
                      fontSize: 15,
                      fontFamily: 'NotoSansKR-Regular',
                    ),
                  ),
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
                color: Colors.grey,
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: SizedBox(
                  // height: 30,
                  child: Text(
                    'Confirm',
                    style: MyStyle.tx17P.copyWith(
                      fontSize: 15,
                      fontFamily: 'NotoSansKR-Regular',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
