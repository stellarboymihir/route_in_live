import 'package:flutter/material.dart';

import '../../../constants/routes.dart';
import '../../../values/MyColor.dart';
import '../../../values/MyStyle.dart';

class ShoppingInformation extends StatefulWidget {
  const ShoppingInformation({super.key});

  @override
  State<ShoppingInformation> createState() => _ShoppingInformationState();
}

class _ShoppingInformationState extends State<ShoppingInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        title: Text(
          'My shopping information',
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
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, trackingRoute);
            },
            child: Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(
                  left: 8.0, right: 8.0, top: 18, bottom: 0.0),
              // width: MediaQuery.of(context).size.width,
              child: Text(
                'Order / Tracking',
                // textAlign: TextAlign.center,
                style: MyStyle.tx14B.copyWith(
                  fontSize: 14,
                ),
              ),
            ),
          ),
          const Divider(
            thickness: 0,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, deliveryRoute);
            },
            child: Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(
                  left: 8.0, right: 8.0, top: 18, bottom: 0.0),
              // width: MediaQuery.of(context).size.width,
              child: Text(
                'Delivery destination management',
                // textAlign: TextAlign.center,
                style: MyStyle.tx14B.copyWith(
                  fontSize: 14,
                ),
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
