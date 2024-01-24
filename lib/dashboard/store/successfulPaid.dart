import 'package:flutter/material.dart';
import 'package:route_in_live/constants/routes.dart';

import '../../values/MyColor.dart';
import '../../values/MyStyle.dart';

class SuccessfulPaid extends StatefulWidget {
  const SuccessfulPaid({super.key});

  @override
  State<SuccessfulPaid> createState() => _SuccessfulPaidState();
}

class _SuccessfulPaidState extends State<SuccessfulPaid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Spacer(),
            Image.asset(
              'assets/icons/payment.png',
              width: 140,
              height: 94,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'The payment has been completed successfully.',
              textAlign: TextAlign.center,
              style: MyStyle.tx17B.copyWith(color: MyColor.orange),
            ),
            Spacer(),
            Container(
              height: 46,
              color: MyColor.yellowamber,
              child: Center(
                child: Text(
                  'Order check',
                  style: MyStyle.tx16B.copyWith(
                    fontWeight: FontWeight.w500,
                    color: MyColor.white,
                    fontFamily: 'NotoSansKR-Medium',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, storeRoute);
              },
              child: Container(
                height: 46,
                color: MyColor.yellowamber,
                child: Center(
                  child: Text(
                    'Shopping plus',
                    style: MyStyle.tx16B.copyWith(
                      fontWeight: FontWeight.w500,
                      color: MyColor.white,
                      fontFamily: 'NotoSansKR-Medium',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
