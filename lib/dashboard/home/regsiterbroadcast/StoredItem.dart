import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:route_in_live/values/MyColor.dart';
import 'package:route_in_live/values/MyStyle.dart';

class StoredItem extends StatefulWidget {
  const StoredItem({super.key});

  @override
  State<StoredItem> createState() => _StoredItemState();
}

class _StoredItemState extends State<StoredItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MyColor.white,
        elevation: 0,
        title: Text(
          'The prize I have been stored',
          style: MyStyle.tx14W.copyWith(
            fontFamily: 'NotoSansKR-Regular',
            color: MyColor.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        dragStartBehavior: DragStartBehavior.start,
        child: Container(
          padding: const EdgeInsets.all(10.0),
          color: MyColor.grey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'A total of 8 cases',
                style: MyStyle.tx16B.copyWith(
                  fontFamily: 'NotoSansKR-SemiBold',
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListView.builder(
                  primary: false,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    // *** Card ***
                    return Container(
                      color: MyColor.white,
                      margin: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/img1.png',
                            height: 72,
                            width: 72,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sports shoes with com...',
                                  style: MyStyle.tx16B.copyWith(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14),
                                ),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '36,000 ',
                                        style: MyStyle.tx14W.copyWith(
                                          color: MyColor.black,
                                          fontSize: 13,
                                          fontFamily: 'Montserrat-SemiBold',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'won',
                                        style: MyStyle.tx13B.copyWith(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  '11, graphite...',
                                  style: MyStyle.tx12B.copyWith(fontSize: 11),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Image.asset(
                                  'assets/icons/minus.png',
                                  height: 16,
                                  width: 16,
                                  alignment: Alignment.topRight,
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                RichText(
                                  softWrap: false,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '30',
                                        style: MyStyle.tx14W.copyWith(
                                          color: MyColor.yellowamber,
                                          fontFamily: 'Montserrat-Regular',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' cases',
                                        style: MyStyle.tx14W.copyWith(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w300,
                                          fontFamily: 'NotoSansKR-Regular',
                                          color: MyColor.yellowamber,
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
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
