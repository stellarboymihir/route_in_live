import 'package:flutter/material.dart';
import 'package:route_in_live/constants/routes.dart';
import 'package:route_in_live/values/MyStyle.dart';

import '../../../values/MyColor.dart';

class Information extends StatefulWidget {
  const Information({super.key});

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: MyColor.white,
        title: Text(
          'Service Information',
          style: MyStyle.tx14B.copyWith(
            fontSize: 14,
            // fontFamily: 'NotoSansKR-Regular',
          ),
        ),
        centerTitle: true,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: Divider(
            thickness: 1,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, termsRoute);
              },
              child: Text(
                'Terms and conditions',
                style: MyStyle.tx14B.copyWith(fontSize: 14),
              ),
            ),
            const SizedBox(
              height: 10,
              child: Divider(
                thickness: 1,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, personalRoute);
              },
              child: Text(
                'Personal information processing policy',
                style: MyStyle.tx14B.copyWith(fontSize: 14),
              ),
            ),
            const SizedBox(
              height: 10,
              child: Divider(
                thickness: 1,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Service introduction',
                style: MyStyle.tx14B.copyWith(fontSize: 14),
              ),
            ),
            const SizedBox(
              height: 10,
              child: Divider(
                thickness: 1,
              ),
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Version information',
                    style: MyStyle.tx14B.copyWith(fontSize: 14),
                  ),
                ),
                Spacer(),
                Text(
                  'v 1.0.0',
                  style: MyStyle.tx12B.copyWith(
                    color: MyColor.black.withOpacity(0.7),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
              child: Divider(
                thickness: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
