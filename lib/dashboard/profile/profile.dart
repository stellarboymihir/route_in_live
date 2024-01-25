import 'package:flutter/material.dart';
import 'package:route_in_live/constants/routes.dart';
import 'package:route_in_live/values/MyColor.dart';

import '../../values/MyStyle.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        automaticallyImplyLeading: false,
        title: Text(
          'Profile',
          style: MyStyle.tx14B.copyWith(
            fontSize: 14,
            // fontFamily: 'NotoSansKR-Regular',
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(
              'assets/icons/cart.png',
              height: 24,
              width: 24,
              color: Colors.black,
            ),
          ),
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: Divider(
            thickness: 1,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/img7.png',
                  height: 48,
                  width: 48,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Run',
                          style: MyStyle.tx20B.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'point',
                              style: MyStyle.tx14B.copyWith(
                                fontSize: 14,
                                fontFamily: 'NotoSansKR-Regular',
                              ),
                            ),
                            Text(
                              ' 1,000',
                              style: MyStyle.tx14B.copyWith(
                                fontSize: 14,
                                fontFamily: 'NotoSansKR-Regular',
                                color: MyColor.purple,
                              ),
                            ),
                            Text(
                              ' Points',
                              style: MyStyle.tx14B.copyWith(
                                fontSize: 14,
                                fontFamily: 'NotoSansKR-Regular',
                                color: MyColor.black.withOpacity(0.5),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, pointRoute);
                  },
                  child: Container(
                    height: 32,
                    // width: 115,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: MyColor.purple,
                    ),
                    child: const Center(
                      child: Text(
                        'Point charging',
                        style: MyStyle.tx14W,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const Divider(
            thickness: 0,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, editInfoRoute);
            },
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
              height: 40,
              child: Text(
                'Edit My Information',
                style: MyStyle.tx14B.copyWith(
                  fontSize: 14,
                  fontFamily: 'NotoSansKR-Regular',
                ),
              ),
            ),
          ),
          const Divider(
            thickness: 0,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, shoppingInfoRoute);
            },
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
              height: 40,
              child: Text(
                'My Shopping Info',
                style: MyStyle.tx14B.copyWith(
                  fontSize: 14,
                  fontFamily: 'NotoSansKR-Regular',
                ),
              ),
            ),
          ),
          const Divider(
            thickness: 0,
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
            height: 40,
            child: Text(
              'Service Center',
              style: MyStyle.tx14B.copyWith(
                fontSize: 14,
                fontFamily: 'NotoSansKR-Regular',
              ),
            ),
          ),
          const Divider(
            thickness: 0,
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
            height: 40,
            child: Text(
              'Notification Settings',
              style: MyStyle.tx14B.copyWith(
                fontSize: 14,
                fontFamily: 'NotoSansKR-Regular',
              ),
            ),
          ),
          const Divider(
            thickness: 0,
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
            height: 40,
            child: Text(
              'Service Information',
              style: MyStyle.tx14B.copyWith(
                fontSize: 14,
                fontFamily: 'NotoSansKR-Regular',
              ),
            ),
          ),
          const Divider(
            thickness: 0,
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 44,
            // width: 115,
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
            ),
            margin: const EdgeInsets.symmetric(
              horizontal: 8.0,
            ),
            decoration: const BoxDecoration(
              color: MyColor.purple,
            ),
            child: const Center(
              child: Text(
                'Celebrity application',
                style: MyStyle.tx14W,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
