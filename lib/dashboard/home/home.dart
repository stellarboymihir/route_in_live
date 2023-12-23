import 'package:flutter/material.dart';

import '../../values/MyColor.dart';
import '../../values/MyStyle.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Image.asset('assets/images/Frame.png'),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.shopping_cart_outlined,
              size: 24,
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
                  Image.asset('assets/images/rectangle.png'),
                  Positioned(
                    top: 8,
                    left: 8,
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
                    child: Container(
                      padding: const EdgeInsets.all(4.0),
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'It will air after ',
                            style: MyStyle.tx12B.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '06:12:59 ',
                            style: MyStyle.tx12P
                                .copyWith(fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'No more equipment. It\'s time to imp...',
                        style: MyStyle.tx16B.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                            fontFamily: 'NotoSansKR-Medium'),
                      ),
                      const Row(
                        children: [
                          Text(
                            'It\'s scheduled to air at 8:00 PM today',
                            style: MyStyle.tx12P,
                          ),
                          Text(
                            ' I Pak Se-ri',
                            style: MyStyle.tx12B,
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Icon(
                        Icons.notifications_none,
                        size: 24,
                      ),
                      Text(
                        'Notification',
                        style: MyStyle.tx10.copyWith(
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'NotoSans-KR-Medium'),
                      )
                    ],
                  ),
                ],
              ),
              const Divider(),

              // Recommend Part
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 2.0, horizontal: 5),
                child: Text(
                  'Recommended product',
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
                                child: const Icon(
                                  Icons.shopping_cart_outlined,
                                  color: Colors.white,
                                  size: 16,
                                ),
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
                              Image.asset('assets/images/badge.png'),
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
                              width: 144,
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
                  'Collecting previews',
                  textAlign: TextAlign.center,
                  style: MyStyle.tx14O,
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
                              width: 144,
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
                color: MyColor.grey,
                child: Text(
                  'Recommended celebrity',
                  textAlign: TextAlign.start,
                  style: MyStyle.tx16B.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
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
                  itemCount: 100,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/boxing.png',
                          height: 184,
                          width: 144,
                        ),
                        // const SizedBox(
                        //   width: 10,
                        // ),
                        Row(
                          children: [
                            Text(
                              'Pak Se-ri',
                              style: MyStyle.tx13B
                                  .copyWith(fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              width: 27,
                            ),
                            Image.asset('assets/images/flower.png'),
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
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(1.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.black),
                              ),
                              child: Text(
                                '#ProfessionalGolf',
                                style: MyStyle.tx8.copyWith(
                                  fontSize: 7,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'NotoSansKR-Thin',
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Container(
                              padding: const EdgeInsets.all(1.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.black),
                              ),
                              child: Text(
                                '#Golf empress',
                                style: MyStyle.tx8.copyWith(
                                  fontSize: 7,
                                  color: Colors.black,
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
                          padding: const EdgeInsets.all(1.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.black),
                          ),
                          child: Text(
                            '#LessonGenius',
                            style: MyStyle.tx8.copyWith(
                              fontSize: 7,
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'NotoSansKR-Thin',
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
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
                    );
                  },
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
                        SizedBox(
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
                    SizedBox(
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
}
