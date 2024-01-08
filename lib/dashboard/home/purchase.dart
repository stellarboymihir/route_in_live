import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:route_in_live/values/MyColor.dart';
import 'package:route_in_live/values/MyStyle.dart';

class Purchase extends StatefulWidget {
  const Purchase({super.key});

  @override
  State<Purchase> createState() => _PurchaseState();
}

class _PurchaseState extends State<Purchase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.grey,
      appBar: AppBar(
        title: Text(
          'Purchase',
          textAlign: TextAlign.center,
          style: MyStyle.tx14B.copyWith(
            fontSize: 14,
            fontFamily: 'NotoSansKR-Regular',
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                color: MyColor.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          '1 Total',
                          style: MyStyle.tx12O.copyWith(
                            fontFamily: 'NotoSansKR-Regular',
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.33,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/img3.png',
                          height: 72,
                          width: 72,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '11 kinds of vivid golf balls',
                              style: MyStyle.tx16B.copyWith(
                                fontFamily: 'NotoSansKR-Medium',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const Text(
                              'Yellow 3 types / 1 pc.',
                              style: MyStyle.tx12B,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: '36,000',
                                  style: MyStyle.tx14B.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'NotoSansKR-SemiBold',
                                  ),
                                ),
                                TextSpan(
                                  text: ' won',
                                  style: MyStyle.tx13B.copyWith(
                                    fontFamily: 'NotoSansKR-Regular',
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ]),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                  ],
                ),
              ),

              // Order Info Row
              Container(
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                color: MyColor.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Ordered information',
                          style: MyStyle.tx12B.copyWith(
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.33,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(4.0),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 2.0),
                          height: 24,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: MyColor.black.withOpacity(0.3),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/icons/checkMark.png',
                                height: 16,
                                width: 16,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              const Text(
                                'Fetch Address',
                                style: MyStyle.tx11W,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),

                    //  Recipient
                    Text(
                      'Recipient',
                      style: MyStyle.tx14B.copyWith(
                        fontSize: 14,
                        fontFamily: 'NotoSansKR-Regualar',
                      ),
                    ),
                    Container(
                      height: 32,
                      width: 335,
                      padding: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.4,
                          color: MyColor.black.withOpacity(0.5),
                        ),
                        borderRadius: BorderRadius.circular(0.6),
                      ),
                      child: Text(
                        'Please enter the recipient\'s name.',
                        textAlign: TextAlign.start,
                        style: MyStyle.tx13B.copyWith(
                          color: MyColor.black.withOpacity(0.3),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),

                    //   Receiving Address
                    Text(
                      'Receiving Address',
                      style: MyStyle.tx14B.copyWith(
                        fontSize: 14,
                        fontFamily: 'NotoSansKR-Regualar',
                      ),
                    ),
                    Container(
                      height: 32,
                      width: 335,
                      padding: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.4,
                          color: MyColor.black.withOpacity(0.5),
                        ),
                        borderRadius: BorderRadius.circular(0.6),
                      ),
                      child: Text(
                        'Please enter your home address.',
                        textAlign: TextAlign.start,
                        style: MyStyle.tx13B.copyWith(
                          color: MyColor.black.withOpacity(0.3),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Container(
                      height: 32,
                      width: 335,
                      padding: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.4,
                          color: MyColor.black.withOpacity(0.5),
                        ),
                        borderRadius: BorderRadius.circular(0.6),
                      ),
                      child: Text(
                        'Please enter your detailed address.',
                        textAlign: TextAlign.start,
                        style: MyStyle.tx13B.copyWith(
                          color: MyColor.black.withOpacity(0.3),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),

                    //Phone Number
                    Text(
                      'Phone number',
                      style: MyStyle.tx14B.copyWith(
                        fontSize: 14,
                        fontFamily: 'NotoSansKR-Regualar',
                      ),
                    ),
                    Container(
                      height: 32,
                      width: 335,
                      padding: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.4,
                          color: MyColor.black.withOpacity(0.5),
                        ),
                        borderRadius: BorderRadius.circular(0.6),
                      ),
                      child: Text(
                        'Please enter your mobile phone number.',
                        textAlign: TextAlign.start,
                        style: MyStyle.tx13B.copyWith(
                          color: MyColor.black.withOpacity(0.3),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                  ],
                ),
              ),

              //   Shipping Requests
              Container(
                padding: const EdgeInsets.all(8.0),
                color: MyColor.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shipping Requests',
                      style: MyStyle.tx12B.copyWith(
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.33,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Container(
                      height: 32,
                      width: 335,
                      padding: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.4,
                          color: MyColor.black.withOpacity(0.5),
                        ),
                        borderRadius: BorderRadius.circular(0.6),
                      ),
                      child: Text(
                        'Please enter your request for delivery.',
                        textAlign: TextAlign.start,
                        style: MyStyle.tx13B.copyWith(
                          color: MyColor.black.withOpacity(0.3),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),

              //  Redeem Points
              Container(
                padding: const EdgeInsets.all(8.0),
                color: MyColor.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Redeem Points',
                      style: MyStyle.tx12B.copyWith(
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.33,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'My Point',
                          style: MyStyle.tx14B.copyWith(
                            fontSize: 14,
                            color: MyColor.black.withOpacity(0.5),
                          ),
                        ),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: '5,000',
                            style: MyStyle.tx14B.copyWith(
                              fontSize: 14,
                            ),
                          ),
                          TextSpan(
                            text: ' Points',
                            style: MyStyle.tx14B.copyWith(
                              fontSize: 14,
                              color: MyColor.black.withOpacity(0.5),
                            ),
                          ),
                        ]))
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        Text(
                          'Redeem Points',
                          style: MyStyle.tx14B.copyWith(
                            fontSize: 14,
                            fontFamily: 'NotoSansKR-Medium',
                            color: MyColor.black.withOpacity(0.5),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 2.0),
                          width: 90,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: MyColor.black.withOpacity(0.3),
                                width: 0.5),
                          ),
                          child: Text(
                            '0',
                            textAlign: TextAlign.right,
                            style: MyStyle.tx14B.copyWith(
                              fontSize: 14,
                              fontFamily: 'NotoSansKR-Medium',
                              color: MyColor.black,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Text(
                          'Points',
                          style: MyStyle.tx14B.copyWith(
                            fontSize: 14,
                            color: MyColor.black.withOpacity(0.5),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 4.0, horizontal: 10),
                          decoration: BoxDecoration(
                            color: MyColor.purple,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Text(
                            'Full Use',
                            style: MyStyle.tx11W,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),

              //   Amount Of Payment
              Container(
                padding: const EdgeInsets.all(8.0),
                color: MyColor.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Amount of payment',
                      style: MyStyle.tx12B.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          const TextSpan(text: '38,500', style: MyStyle.tx20),
                          TextSpan(
                            text: ' won',
                            style: MyStyle.tx16O.copyWith(
                              fontWeight: FontWeight.w300,
                              color: MyColor.black,
                              fontFamily: 'NotoSansKR-Regular',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Product Amount',
                          style: MyStyle.tx14B.copyWith(
                            color: MyColor.black.withOpacity(0.5),
                            fontSize: 14,
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '40,000',
                                style: MyStyle.tx14B.copyWith(
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                text: ' won',
                                style: MyStyle.tx14B.copyWith(
                                  fontSize: 14,
                                  color: MyColor.black.withOpacity(0.5),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Shipping Fee',
                          style: MyStyle.tx14B.copyWith(
                            color: MyColor.black.withOpacity(0.5),
                            fontSize: 14,
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '+2,500',
                                style: MyStyle.tx14B.copyWith(
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                text: ' won',
                                style: MyStyle.tx14B.copyWith(
                                  fontSize: 14,
                                  color: MyColor.black.withOpacity(0.5),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Discount Applied',
                          style: MyStyle.tx14B.copyWith(
                            color: MyColor.black.withOpacity(0.5),
                            fontSize: 14,
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '- 4,000',
                                style: MyStyle.tx14B.copyWith(
                                  fontSize: 14,
                                  color: MyColor.purple,
                                ),
                              ),
                              TextSpan(
                                text: ' won',
                                style: MyStyle.tx14B.copyWith(
                                  fontSize: 14,
                                  color: MyColor.black.withOpacity(0.5),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Use the key point',
                          style: MyStyle.tx14B.copyWith(
                            color: MyColor.black.withOpacity(0.5),
                            fontSize: 14,
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '0',
                                style: MyStyle.tx14B.copyWith(
                                  fontSize: 14,
                                  color: MyColor.purple,
                                ),
                              ),
                              TextSpan(
                                text: ' Points',
                                style: MyStyle.tx14B.copyWith(
                                  fontSize: 14,
                                  color: MyColor.black.withOpacity(0.5),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total payment amount',
                          style: MyStyle.tx14B.copyWith(
                            color: MyColor.black.withOpacity(0.5),
                            fontSize: 14,
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '38,500',
                                style: MyStyle.tx14B.copyWith(
                                    fontSize: 14, color: MyColor.orange),
                              ),
                              TextSpan(
                                text: ' won',
                                style: MyStyle.tx14B.copyWith(
                                  fontSize: 14,
                                  color: MyColor.black.withOpacity(0.5),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),

              //   Payment Method
              Container(
                padding: const EdgeInsets.all(8.0),
                color: MyColor.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Payment method',
                      style: MyStyle.tx12B.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 164,
                          color: MyColor.orange,
                          child: const Center(
                            child: Text(
                              'Credit card',
                              style: MyStyle.tx14W,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          height: 40,
                          width: 164,
                          decoration: BoxDecoration(
                              border: Border.all(
                            color: MyColor.orange,
                            width: 0.4,
                          )),
                          child: const Center(
                            child: Text(
                              'Cell phone',
                              style: MyStyle.tx14O,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 164,
                          decoration: BoxDecoration(
                              border: Border.all(
                            color: MyColor.orange,
                            width: 0.4,
                          )),
                          child: const Center(
                            child: Text(
                              'Make a deposit',
                              style: MyStyle.tx14O,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          height: 40,
                          width: 164,
                          decoration: BoxDecoration(
                              border: Border.all(
                            color: MyColor.orange,
                            width: 0.4,
                          )),
                          child: const Center(
                            child: Text(
                              'Payment method API',
                              style: MyStyle.tx14O,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 48,
                      color: MyColor.purple,
                      child: Center(
                        child: Text(
                          'Pay for it',
                          style: MyStyle.tx14W.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
