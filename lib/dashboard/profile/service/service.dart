import 'package:flutter/material.dart';
import 'package:route_in_live/constants/routes.dart';
import 'package:route_in_live/values/MyStyle.dart';

import '../../../values/MyColor.dart';

class Service extends StatefulWidget {
  const Service({super.key});

  @override
  State<Service> createState() => _State();
}

class _State extends State<Service> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: MyColor.white,
        title: Text(
          'Delivery destination management',
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, noticesServiceRoute);
            },
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
              height: 40,
              child: Text(
                'Notice',
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
              Navigator.pushNamed(context, frequentlyRoute);
            },
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
              height: 40,
              child: Text(
                'Frequently asked question',
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
              '1:1 inquiry',
              style: MyStyle.tx14B.copyWith(
                fontSize: 14,
                fontFamily: 'NotoSansKR-Regular',
              ),
            ),
          ),
          const Divider(
            thickness: 0,
          ),
        ],
      ),
    );
  }
}
