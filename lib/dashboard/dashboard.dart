import 'package:flutter/material.dart';
import 'package:route_in_live/values/MyStyle.dart';

import '../values/MyColor.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
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
                    padding: EdgeInsets.all(4.0),
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
            Divider(),
            ListView.builder(
              itemBuilder: (BuildContext context, int index) {},
              child: Container(
                child: Column(
                  children: [
                    Text(
                      'Recommended product',
                      style: MyStyle.tx16B.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset('assets/images/img1.png'),
                        SizedBox(
                          width: 4,
                        ),
                        Image.asset('assets/images/img2.png'),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
