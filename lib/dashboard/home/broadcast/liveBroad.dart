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

  var size, height, width;
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
                // filterQuality: FilterQuality.low,
                // opacity: const AlwaysStoppedAnimation(0.5),
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
                          // padding: const EdgeInsets.all(8.0),
                          // margin: const EdgeInsets.all(8.0),
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
                                // itemHeight: 20,
                                dropdownColor: Colors.transparent,
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
                                selectedItemBuilder: (BuildContext context) {
                                  return _list.map<Widget>((String item) {
                                    return Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        item,
                                        maxLines: 1,
                                        style: MyStyle.tx10W,
                                      ),
                                    );
                                  }).toList();
                                },
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
                        // mainAxisAlignment: MainAxisAlignment.start,
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

                          // RotatedBox(
                          //   quarterTurns: 4,
                          //   child: Slider(
                          //     value: 1,
                          //     min: 1,
                          //     max: 4,
                          //     onChanged: (newValue) {
                          //       setState(() {});
                          //     },
                          //   ),
                          // ),

                          Row(
                            // Bottom Row
                            children: [
                              // const SizedBox(
                              //   width: 10,
                              // ),
                              Container(
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
                              const SizedBox(
                                width: 8,
                              ),

                              Container(
                                width: 170,
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
                                    fontSize: 11,
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
                              Container(
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
                              //
                            ],
                          )
                        ],
                      ),
                    ),
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
}
