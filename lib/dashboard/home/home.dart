import 'package:flutter/material.dart';

import '../../constants/routes.dart';
import '../../values/MyColor.dart';
import '../../values/MyStyle.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  var notifyClick = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Image.asset('assets/images/Frame.png'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/icons/Cart.png',
              color: Colors.black,
            ),
          ),
        ],
      ),

      //  Dashboard Page
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image Part
              Stack(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, liveReservationRoute);
                    },
                    child: Image.asset('assets/images/rectangle.png'),
                  ),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      padding: const EdgeInsets.all(7.0),
                      decoration: BoxDecoration(
                        color: MyColor.orange,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        'Golf',
                        style: MyStyle.tx12B.copyWith(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 8,
                    left: 90,
                    right: 90,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, liveBroadcastRoute);
                      },
                      // child: Container(
                      //   padding: const EdgeInsets.all(4.0),
                      //   width: 100,
                      //   decoration: BoxDecoration(
                      //     color: Colors.white.withOpacity(0.6),
                      //     borderRadius: BorderRadius.circular(12),
                      //   ),
                      //   child: Row(
                      //     // crossAxisAlignment: CrossAxisAlignment.end,
                      //     mainAxisAlignment: MainAxisAlignment.center,
                      //     children: [
                      //       Text(
                      //         'It will air after ',
                      //         style: MyStyle.tx12B.copyWith(
                      //           fontWeight: FontWeight.w500,
                      //         ),
                      //       ),
                      //       Text(
                      //         '06:12:59 ',
                      //         style: MyStyle.tx12P
                      //             .copyWith(fontWeight: FontWeight.w700),
                      //       )
                      //     ],
                      //   ),
                      // ),
                      child: Container(
                        margin: const EdgeInsets.all(8.0),
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: MyColor.purple,
                        ),
                        child: Text(
                          'Live, enter',
                          textAlign: TextAlign.center,
                          style: MyStyle.tx14W
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'No more equipment. It\'s time to imp...',
                        style: MyStyle.tx16B.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                            fontFamily: 'NotoSansKR-Medium'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'It\'s scheduled to air at 8:00 PM today',
                            style: MyStyle.tx12P.copyWith(
                              fontSize: 11,
                            ),
                          ),
                          Text(
                            ' I Pak Se-ri',
                            style: MyStyle.tx12B.copyWith(
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return homeDialog();
                              });
                        },
                        // child: Image.asset(),
                        child: Column(
                          children: [
                            Image.asset(
                              notifyClick == true
                                  ? 'assets/icons/alerton.png'
                                  : 'assets/icons/alert.png',
                              height: 24,
                              width: 24,
                            ),
                            Text(
                              'Notification',
                              style: MyStyle.tx10.copyWith(
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 9,
                                  color: notifyClick == true
                                      ? MyColor.orange
                                      : MyColor.black,
                                  fontFamily: 'NotoSans-KR-Medium'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const Divider(
                thickness: 0,
              ),

              // Recommend Part
              Padding(
                padding: const EdgeInsets.only(
                  top: 10.0,
                  left: 5,
                  right: 5.0,
                ),
                child: Text(
                  'Recommended product',
                  textAlign: TextAlign.start,
                  style: MyStyle.tx16B.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 260,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 100,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.only(top: 10),
                      color: MyColor.grey,
                      // margin: ,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Image.asset(
                                'assets/images/img1.png',
                                height: 172,
                                width: 172,
                              ),
                              Positioned(
                                top: 8,
                                left: 8,
                                child: Container(
                                  padding: const EdgeInsets.all(7.0),
                                  decoration: BoxDecoration(
                                    color: MyColor.purple,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Text(
                                    'It\'s almost',
                                    style: MyStyle.tx12B.copyWith(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Column(
                                children: [
                                  Text('Running shoes ...'),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '10%',
                                        style: MyStyle.tx13P,
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        '39,000 won',
                                        style: MyStyle.tx13B,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 25,
                              ),
                              Container(
                                height: 24,
                                width: 24,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: MyColor.yellowamber,
                                ),
                                child: Image.asset('assets/icons/Cart1.png'),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset('assets/images/avtar1.png'),
                              Image.asset('assets/images/avtar2.png'),
                              Image.asset('assets/images/avtar3.png'),
                              const SizedBox(
                                width: 30,
                              ),
                              Image.asset(
                                'assets/images/badge.png',
                                height: 24,
                                width: 24,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              const Text(
                                'Celeb reco- \n mmendation',
                                style: MyStyle.tx8,
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1),
                  border: Border.all(
                    color: MyColor.orange,
                  ),
                ),
                height: 40,
                width: double.infinity,
                child: const Text(
                  'See more products',
                  textAlign: TextAlign.center,
                  style: MyStyle.tx14O,
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              //   Scheduled Live  **
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 2.0, horizontal: 5),
                child: Text(
                  'Scheduled live',
                  textAlign: TextAlign.start,
                  style: MyStyle.tx16B.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 184,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 100,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              'assets/images/baseball.png',
                              height: 184,
                              width: 130,
                            ),
                            Positioned(
                              top: 8,
                              left: 15,
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(4.0),
                                    decoration: BoxDecoration(
                                      color: MyColor.orange,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: const Text('Catch ball',
                                        style: MyStyle.tx9),
                                  ),
                                  const SizedBox(
                                    width: 35,
                                  ),
                                  const Icon(
                                    Icons.notifications_none,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              right: 10,
                              bottom: 10,
                              left: 10,
                              child: Text(
                                'Let\'s catch the\n'
                                'catch ball. Let\'s\n'
                                'catch it together.',
                                style: MyStyle.tx14W.copyWith(
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.3,
                                    fontSize: 12),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, collectingPreviewRoute);
                },
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1),
                    border: Border.all(
                      color: MyColor.orange,
                    ),
                  ),
                  height: 40,
                  width: double.infinity,
                  child: const Text(
                    'Collecting previews',
                    textAlign: TextAlign.center,
                    style: MyStyle.tx14O,
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              // **  Play Live  **
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 2.0, horizontal: 5),
                child: Text(
                  'Play live',
                  textAlign: TextAlign.start,
                  style: MyStyle.tx16B.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 184,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 100,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              'assets/images/baseball.png',
                              height: 184,
                              width: 130,
                            ),
                            Positioned(
                              top: 8,
                              left: 10,
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(4.0),
                                    decoration: BoxDecoration(
                                      color: MyColor.orange,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: const Text('Catch ball',
                                        style: MyStyle.tx9),
                                  ),
                                  const SizedBox(
                                    width: 35,
                                  ),
                                  Image.asset(
                                    'assets/icons/alert.png',
                                    color: Colors.white,
                                    height: 20,
                                    width: 20,
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              right: 10,
                              bottom: 10,
                              left: 10,
                              child: Text(
                                'Let\'s catch the\n'
                                'catch ball. Let\'s\n'
                                'catch it together.',
                                style: MyStyle.tx14W.copyWith(
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 0.3,
                                    fontSize: 12),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1),
                  border: Border.all(
                    color: MyColor.orange,
                  ),
                ),
                height: 40,
                width: double.infinity,
                child: const Text(
                  'Watch more shows',
                  textAlign: TextAlign.center,
                  style: MyStyle.tx14O,
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              //  **  Recommended Celebrity  **
              Container(
                padding: const EdgeInsets.all(10.0),
                color: MyColor.grey,
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Recommended celebrity',
                        style: MyStyle.tx16B.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 340,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              padding: const EdgeInsets.all(8.0),
                              margin: const EdgeInsets.only(right: 10),
                              color: MyColor.white,
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/images/boxing.png',
                                    height: 174,
                                    width: 144,
                                    fit: BoxFit.fill,
                                  ),
                                  Row(
                                    children: [
                                      const SizedBox(
                                        height: 25,
                                      ),
                                      Text(
                                        'Pak Se-ri',
                                        style: MyStyle.tx13B.copyWith(
                                            fontWeight: FontWeight.w700),
                                      ),
                                      const SizedBox(
                                        width: 27,
                                      ),
                                      Image.asset('assets/images/flower.png'),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '19,000',
                                        style: MyStyle.tx11.copyWith(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'NotoSansKR-Regular'),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'World-class golf that you\n learn from professionals!',
                                    style: MyStyle.tx11.copyWith(
                                      fontFamily: 'NotoSansKR-Regular',
                                      fontSize: 10,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(2.0),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          border: Border.all(
                                            color:
                                                MyColor.black.withOpacity(0.1),
                                          ),
                                        ),
                                        child: Text(
                                          '#ProfessionalGolf',
                                          style: MyStyle.tx8.copyWith(
                                            fontSize: 7,
                                            color: MyColor.black,
                                            fontWeight: FontWeight.w300,
                                            fontFamily: 'NotoSansKR-Thin',
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(2.0),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          border: Border.all(
                                            color:
                                                MyColor.black.withOpacity(0.1),
                                          ),
                                        ),
                                        child: Text(
                                          '#Golf empress',
                                          style: MyStyle.tx8.copyWith(
                                            fontSize: 7,
                                            color: MyColor.black,
                                            fontWeight: FontWeight.w300,
                                            fontFamily: 'NotoSansKR-Thin',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(2.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: MyColor.black.withOpacity(0.1),
                                      ),
                                    ),
                                    child: Text(
                                      '#LessonGenius',
                                      style: MyStyle.tx8.copyWith(
                                        fontSize: 7,
                                        color: MyColor.black,
                                        fontWeight: FontWeight.w300,
                                        fontFamily: 'NotoSansKR-Thin',
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0, horizontal: 50.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(color: MyColor.orange),
                                    ),
                                    child: Text(
                                      'Follow',
                                      style: MyStyle.tx12O.copyWith(
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //  One Q

              Container(
                padding: const EdgeInsets.all(6.0),
                color: Colors.black,
                child: Row(
                  children: [
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'One Q Studio Co., Ltd.',
                              style: MyStyle.tx11.copyWith(
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Image.asset('assets/images/down.png'),
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          'See the business information',
                          style: MyStyle.tx9.copyWith(
                            fontWeight: FontWeight.w300,
                            fontFamily: 'NotoSansKR-thin',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Terms and conditions',
                          style: MyStyle.tx10.copyWith(
                            fontFamily: 'NotoSansKR-Regular',
                            decoration: TextDecoration.none,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Personal information processing policy',
                          style: MyStyle.tx10.copyWith(
                            fontFamily: 'NotoSansKR-Regular',
                            decoration: TextDecoration.none,
                            color: Colors.white,
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
      ),
    );
  }

  Widget homeDialog() {
    return AlertDialog(
      title: Text(
        'in OneQ Live \n'
        'I want to send you a \n notification.',
        textAlign: TextAlign.center,
        style: MyStyle.tx17B.copyWith(fontSize: 15),
      ),
      content: Text(
        textAlign: TextAlign.center,
        'Warning, sound and icon badges \n'
        ' It can be included in notifications.\n'
        'You can configure this in settings.',
        style: MyStyle.tx13B.copyWith(
          color: Colors.black.withOpacity(0.5),
        ),
      ),
      contentPadding: const EdgeInsets.only(top: 8, bottom: 5),
      actionsPadding: const EdgeInsets.all(5),
      actions: [
        const Divider(
          height: 0,
          thickness: 0,
          indent: 0,
          endIndent: 0,
          color: Colors.grey,
        ),
        // const SizedBox(
        //   height: 8,
        // ),
        Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    notifyClick = false;
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  textAlign: TextAlign.center,
                  'Not Allowed',
                  style: MyStyle.tx17B.copyWith(
                    color: MyColor.lred,
                    fontFamily: 'NotoSansKR-Medium',
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
              child: VerticalDivider(
                width: 0,
                thickness: 0,
                indent: 0,
                endIndent: 0,
                color: Colors.grey,
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    notifyClick = true;
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  textAlign: TextAlign.center,
                  'Permit',
                  style: MyStyle.tx17B.copyWith(
                    fontFamily: 'NotoSansKR-Medium',
                    color: MyColor.iosblue,
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
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
