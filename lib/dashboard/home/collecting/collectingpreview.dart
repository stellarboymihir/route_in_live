import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:route_in_live/values/MyColor.dart';
import 'package:route_in_live/values/MyStyle.dart';

class CollectingPreview extends StatefulWidget {
  const CollectingPreview({super.key});

  @override
  State<CollectingPreview> createState() => _CollectingPreviewState();
}

class _CollectingPreviewState extends State<CollectingPreview> {
  var notifyPrevClick = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.grey,
      appBar: AppBar(
        title: Text(
          'Collecting Previews',
          style: MyStyle.tx14W.copyWith(
            color: MyColor.black,
            fontFamily: 'NotoSansKR-Regular',
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: MyColor.white,
      ),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            print(index);
            return Container(
              color: MyColor.white,
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.all(4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/img7.png',
                        height: 40,
                        width: 40,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pak Se-ri',
                            style: MyStyle.tx16B.copyWith(
                              fontFamily: 'NotoSansKR-Medium',
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            'Saturday  I 18:00',
                            style: MyStyle.tx12P.copyWith(
                              fontFamily: 'NotoSansKR-Regular',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Let\'s play golf after knowing it!',
                              style: MyStyle.tx16B.copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                              ),
                            ),
                            const WidgetSpan(
                              child: SizedBox(
                                // height: 10,
                                width: 4,
                              ),
                            ),
                            TextSpan(
                              text: 'golf',
                              style: MyStyle.tx12O.copyWith(
                                fontFamily: 'Montserrat-Medium',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            if (notifyPrevClick == true) {
                              notifyPrevClick = false;
                              Fluttertoast.showToast(
                                msg:
                                    'I don\'t receive broadcast start notifications',
                                toastLength: Toast.LENGTH_SHORT,
                                timeInSecForIosWeb: 3,
                                backgroundColor: MyColor.white,
                                textColor: MyColor.black,
                                fontSize: 13,
                              );
                            } else {
                              notifyPrevClick = true;
                              Fluttertoast.showToast(
                                msg:
                                    'You will be notified of the start of the broadcast',
                                toastLength: Toast.LENGTH_SHORT,
                                timeInSecForIosWeb: 3,
                                backgroundColor: MyColor.white,
                                textColor: MyColor.black,
                                fontSize: 13,
                              );
                            }
                          });
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              notifyPrevClick == true
                                  ? 'assets/icons/alerton.png'
                                  : 'assets/icons/alert.png',
                              height: 20,
                              width: 20,
                            ),
                            Text(
                              'Notification',
                              style: MyStyle.tx10.copyWith(
                                  fontFamily: 'NotoSansKR-Medium',
                                  fontWeight: FontWeight.w500,
                                  color: notifyPrevClick == true
                                      ? MyColor.orange
                                      : MyColor.black,
                                  decoration: TextDecoration.none),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Stack(
                    children: [
                      Image.asset('assets/images/play.png'),
                      Positioned(
                        bottom: 10,
                        right: 10,
                        // after that for video
                        child: InkWell(
                          // onTap: (){},
                          child: Image.asset(
                            'assets/icons/border.png',
                            height: 20,
                            width: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
