import 'package:flutter/material.dart';
import 'package:route_in_live/values/MyColor.dart';
import 'package:route_in_live/values/MyStyle.dart';

class PaymentSuccesfull extends StatefulWidget {
  const PaymentSuccesfull({super.key});

  @override
  State<PaymentSuccesfull> createState() => _PaymentSuccesfullState();
}

class _PaymentSuccesfullState extends State<PaymentSuccesfull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 180,
            ),
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
            const SizedBox(
              height: 80,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
                Navigator.pop(context);
                Navigator.pop(context);
                Navigator.pop(context);
                Navigator.pop(context);
                Navigator.pop(context);
                Navigator.pop(context);
                Navigator.pop(context);
                Navigator.pop(context);
                Navigator.pop(context);
              },
              child: Container(
                height: 46,
                width: 351,
                color: MyColor.orange,
                child: Center(
                  child: Text(
                    'Keep Watching',
                    style: MyStyle.tx16B.copyWith(
                      fontWeight: FontWeight.w500,
                      color: MyColor.white,
                      fontFamily: 'NotoSansKR-Medium',
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 140,
            ),
            Container(
              height: 46,
              width: 351,
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
            Container(
              height: 46,
              width: 351,
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
          ],
        ),
      ),
    );
  }
}
