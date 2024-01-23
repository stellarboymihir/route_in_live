import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:route_in_live/constants/routes.dart';
import 'package:route_in_live/values/MyColor.dart';
import 'package:route_in_live/values/MyStyle.dart';

class Purchase extends StatefulWidget {
  const Purchase({super.key});

  @override
  State<Purchase> createState() => _PurchaseState();
}

class _PurchaseState extends State<Purchase> {
  TextEditingController recipName = TextEditingController();
  TextEditingController homeAdd = TextEditingController();
  TextEditingController detailAdd = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController pointsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.grey,
      appBar: AppBar(
        backgroundColor: MyColor.white,
        scrolledUnderElevation: 0,
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
                        InkWell(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return purchaseDialog();
                                });
                          },
                          child: Container(
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
                        fontFamily: 'NotoSansKR-Regular',
                      ),
                    ),
                    Container(
                      height: 42,
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(0.0),
                      // decoration: BoxDecoration(
                      //   border: Border.all(
                      //     width: 0.4,
                      //     color: MyColor.black.withOpacity(0.5),
                      //   ),
                      //   borderRadius: BorderRadius.circular(0.6),
                      // ),
                      child: TextFormField(
                        buildCounter: (context,
                                {required currentLength,
                                required isFocused,
                                maxLength}) =>
                            const SizedBox(),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter some Text';
                          }
                          return null;
                        },
                        style: MyStyle.tx13B.copyWith(
                          fontFamily: 'NotoSansKR-Regular',
                        ),
                        controller: recipName,
                        maxLines: 1,
                        keyboardType: TextInputType.text,
                        onChanged: (value) {
                          setState(() {});
                        },
                        decoration: InputDecoration(
                          hintText: 'Please enter the recipient\'s name.',
                          hintStyle: MyStyle.tx13B.copyWith(
                            color: MyColor.black.withOpacity(0.3),
                          ),
                          contentPadding: EdgeInsets.all(8.0),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1),
                            borderSide: BorderSide(
                              color: MyColor.black.withOpacity(0.5),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1),
                            borderSide: BorderSide(
                              color: MyColor.black.withOpacity(0.3),
                            ),
                          ),
                        ),
                        textAlign: TextAlign.start,
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
                      height: 42,
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(0.0),
                      child: TextFormField(
                        buildCounter: (context,
                                {required currentLength,
                                required isFocused,
                                maxLength}) =>
                            const SizedBox(),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter some Text';
                          }
                          return null;
                        },
                        style: MyStyle.tx13B.copyWith(
                          fontFamily: 'NotoSansKR-Regular',
                        ),
                        controller: homeAdd,
                        maxLines: 1,
                        keyboardType: TextInputType.text,
                        onChanged: (value) {
                          setState(() {});
                        },
                        decoration: InputDecoration(
                          hintText: 'Please enter your home address.',
                          hintStyle: MyStyle.tx13B.copyWith(
                            color: MyColor.black.withOpacity(0.3),
                          ),
                          contentPadding: EdgeInsets.all(8.0),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1),
                            borderSide: BorderSide(
                              color: MyColor.black.withOpacity(0.5),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1),
                            borderSide: BorderSide(
                              color: MyColor.black.withOpacity(0.3),
                            ),
                          ),
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Container(
                      height: 42,
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(0.0),
                      child: TextFormField(
                        buildCounter: (context,
                                {required currentLength,
                                required isFocused,
                                maxLength}) =>
                            const SizedBox(),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter some Text';
                          }
                          return null;
                        },
                        style: MyStyle.tx13B.copyWith(
                          fontFamily: 'NotoSansKR-Regular',
                        ),
                        controller: detailAdd,
                        maxLines: 1,
                        keyboardType: TextInputType.text,
                        onChanged: (value) {
                          setState(() {});
                        },
                        decoration: InputDecoration(
                          hintText: 'Please enter your detailed address.',
                          hintStyle: MyStyle.tx13B.copyWith(
                            color: MyColor.black.withOpacity(0.3),
                          ),
                          contentPadding: EdgeInsets.all(8.0),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1),
                            borderSide: BorderSide(
                              color: MyColor.black.withOpacity(0.5),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1),
                            borderSide: BorderSide(
                              color: MyColor.black.withOpacity(0.3),
                            ),
                          ),
                        ),
                        textAlign: TextAlign.start,
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
                        fontFamily: 'NotoSansKR-Regular',
                      ),
                    ),
                    Container(
                      height: 42,
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(0.0),
                      child: TextFormField(
                        buildCounter: (context,
                                {required currentLength,
                                required isFocused,
                                maxLength}) =>
                            const SizedBox(),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter some Text';
                          }
                          return null;
                        },
                        style: MyStyle.tx13B.copyWith(
                          fontFamily: 'NotoSansKR-Regular',
                        ),
                        controller: phoneNumber,
                        maxLines: 1,
                        keyboardType: TextInputType.phone,
                        onChanged: (value) {
                          setState(() {});
                        },
                        decoration: InputDecoration(
                          hintText: 'Please enter your mobile phone number.',
                          hintStyle: MyStyle.tx13B.copyWith(
                            color: MyColor.black.withOpacity(0.3),
                          ),
                          contentPadding: EdgeInsets.all(8.0),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1),
                            borderSide: BorderSide(
                              color: MyColor.black.withOpacity(0.5),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1),
                            borderSide: BorderSide(
                              color: MyColor.black.withOpacity(0.3),
                            ),
                          ),
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              ),

              //   Shipping Requests
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                margin: const EdgeInsets.symmetric(vertical: 0.0),
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
                    InkWell(
                      onTap: () {
                        shippingRequestSheet();
                      },
                      child: Container(
                        height: 42,
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.4,
                            color: MyColor.black.withOpacity(0.5),
                          ),
                          borderRadius: BorderRadius.circular(0.6),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Please enter your request for delivery.',
                              textAlign: TextAlign.start,
                              style: MyStyle.tx13B.copyWith(
                                color: MyColor.black.withOpacity(0.3),
                              ),
                            ),
                            Image.asset(
                              'assets/icons/down.png',
                              height: 16,
                              width: 16,
                            ),
                          ],
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
                              fontSize: 13,
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
                        Expanded(
                          child: Container(
                            height: 34,
                            padding:
                                const EdgeInsets.only(left: 4.0, right: 2.0),
                            width: MediaQuery.of(context).size.width,
                            child: TextFormField(
                              buildCounter: (context,
                                      {required currentLength,
                                      required isFocused,
                                      maxLength}) =>
                                  const SizedBox(),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter some Text';
                                }
                                return null;
                              },
                              style: MyStyle.tx13B.copyWith(
                                fontFamily: 'NotoSansKR-Regular',
                              ),
                              controller: pointsController,
                              maxLines: 1,
                              keyboardType: TextInputType.number,
                              onChanged: (value) {
                                setState(() {});
                              },
                              decoration: InputDecoration(
                                hintText: '0',
                                hintStyle: MyStyle.tx13B.copyWith(
                                  color: MyColor.black,
                                ),
                                contentPadding: const EdgeInsets.only(
                                    left: 4.0, right: 4.0),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(1),
                                  borderSide: BorderSide(
                                    color: MyColor.black.withOpacity(0.5),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(1),
                                  borderSide: BorderSide(
                                    color: MyColor.black.withOpacity(0.3),
                                  ),
                                ),
                              ),
                              textAlign: TextAlign.start,
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
                    const SizedBox(
                      height: 6,
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: '38,500',
                              style: MyStyle.tx20.copyWith(fontSize: 18)),
                          TextSpan(
                            text: ' won',
                            style: MyStyle.tx16O.copyWith(
                              fontWeight: FontWeight.w300,
                              color: MyColor.black,
                              fontSize: 15,
                              fontFamily: 'NotoSansKR-Regular',
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Product Amount',
                          style: MyStyle.tx14B.copyWith(
                            color: MyColor.black.withOpacity(0.5),
                            fontSize: 13,
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '40,000',
                                style: MyStyle.tx14B.copyWith(
                                  fontSize: 13,
                                ),
                              ),
                              TextSpan(
                                text: ' won',
                                style: MyStyle.tx14B.copyWith(
                                  fontSize: 13,
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
                            fontSize: 13,
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '+2,500',
                                style: MyStyle.tx14B.copyWith(
                                  fontSize: 13,
                                ),
                              ),
                              TextSpan(
                                text: ' won',
                                style: MyStyle.tx14B.copyWith(
                                  fontSize: 13,
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
                            fontSize: 13,
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '- 4,000',
                                style: MyStyle.tx14B.copyWith(
                                  fontSize: 13,
                                  color: MyColor.purple,
                                ),
                              ),
                              TextSpan(
                                text: ' won',
                                style: MyStyle.tx14B.copyWith(
                                  fontSize: 13,
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
                            fontSize: 13,
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '0',
                                style: MyStyle.tx14B.copyWith(
                                  fontSize: 13,
                                  color: MyColor.purple,
                                ),
                              ),
                              TextSpan(
                                text: ' Points',
                                style: MyStyle.tx14B.copyWith(
                                  fontSize: 13,
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
                            fontSize: 13,
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '38,500',
                                style: MyStyle.tx14B.copyWith(
                                    fontSize: 13, color: MyColor.orange),
                              ),
                              TextSpan(
                                text: ' won',
                                style: MyStyle.tx14B.copyWith(
                                  fontSize: 13,
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
                color: MyColor.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Payment method',
                        style: MyStyle.tx12B.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    // const SizedBox(
                    //   height: 2,
                    // ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 40,
                              color: MyColor.orange,
                              child: Center(
                                child: Text(
                                  'Credit card',
                                  style: MyStyle.tx14W.copyWith(
                                    fontSize: 13,
                                    fontFamily: 'NotoSansKR-Medium',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                color: MyColor.orange,
                                width: 0.4,
                              )),
                              child: Center(
                                child: Text(
                                  'Cell phone',
                                  style: MyStyle.tx14O.copyWith(
                                    fontSize: 13,
                                    fontFamily: 'NotoSansKR-Medium',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // const SizedBox(
                    //   height: 8,
                    // ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                color: MyColor.orange,
                                width: 0.4,
                              )),
                              child: Center(
                                child: Text(
                                  'Make a deposit',
                                  style: MyStyle.tx14O.copyWith(
                                    fontSize: 13,
                                    fontFamily: 'NotoSansKR-Medium',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: MyColor.orange,
                                  width: 0.4,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Payment method API',
                                  style: MyStyle.tx14O.copyWith(
                                    fontSize: 13,
                                    fontFamily: 'NotoSansKR-Medium',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),

              // Conditions
              Container(
                color: MyColor.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/icons/checkMark.png',
                            height: 20,
                            width: 20,
                            color: MyColor.black.withOpacity(0.5),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Text(
                              'Confirmation of terms and conditions and \n'
                              'consent to payment.',
                              style: MyStyle.tx14B.copyWith(
                                fontSize: 13,
                                color: MyColor.black.withOpacity(0.5),
                              ),
                            ),
                          ),
                          Image.asset(
                            'assets/icons/downArrow.png',
                            height: 20,
                            width: 20,
                            color: MyColor.black.withOpacity(0.5),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 0,
                      color: MyColor.black.withOpacity(0.1),
                    ),
                    ExpansionTile(
                      shape: Border.all(color: Colors.transparent),
                      leading: Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: Image.asset(
                          'assets/icons/right.png',
                          height: 24,
                          width: 24,
                        ),
                      ),
                      title: Text(
                        'Agree to provide personal information to a third party.',
                        style: MyStyle.tx14B.copyWith(
                          fontSize: 13,
                          color: MyColor.orange,
                        ),
                      ),
                      tilePadding: const EdgeInsets.all(0.0),
                      trailing: Image.asset(
                        'assets/icons/downArrow.png',
                        height: 24,
                        width: 24,
                        color: MyColor.black.withOpacity(0.5),
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Divider(
                                thickness: 0,
                                color: MyColor.black.withOpacity(0.1),
                              ),
                              Text(
                                'Agree to provide personal information to a third party.',
                                style: MyStyle.tx12B.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Agree to provide personal information to a third party. '
                                'Agree to provide personal information to a third party. '
                                'Agree to provide personal information to a third party. '
                                'Agree to provide personal information to a third party. '
                                'Agree to provide personal information to a third party. '
                                'Agree to provide personal information to a third party. '
                                'Agree to provide personal information to a third party. '
                                'Agree to provide personal information to a third party. ',
                                style: MyStyle.tx10.copyWith(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'NotoSansKR-Regular',
                                ),
                              ),

                              //   Spacing
                            ],
                          ),
                        )
                      ],
                    ),
                    Divider(
                      thickness: 0,
                      color: MyColor.black.withOpacity(0.1),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/icons/checkMark.png',
                            height: 20,
                            width: 20,
                            color: MyColor.black.withOpacity(0.5),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Text(
                              'Agree to collect and use personal \n information.',
                              style: MyStyle.tx14B.copyWith(
                                fontSize: 13,
                                color: MyColor.black.withOpacity(0.5),
                              ),
                            ),
                          ),
                          Image.asset(
                            'assets/icons/downArrow.png',
                            height: 20,
                            width: 20,
                            color: MyColor.black.withOpacity(0.5),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 0,
                      color: MyColor.black.withOpacity(0.1),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/icons/checkMark.png',
                            height: 20,
                            width: 20,
                            color: MyColor.black.withOpacity(0.5),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Text(
                              'I agree to use Welcome Payments.',
                              style: MyStyle.tx14B.copyWith(
                                fontSize: 13,
                                color: MyColor.black.withOpacity(0.5),
                              ),
                            ),
                          ),
                          Image.asset(
                            'assets/icons/downArrow.png',
                            height: 20,
                            width: 20,
                            color: MyColor.black.withOpacity(0.5),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 0,
                      color: MyColor.black.withOpacity(0.1),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 0.0),
                      child: Text(
                        'One Q Live Co., Ltd. is a provider of the mail order brokerage system, and is not a '
                        'party to mail order, and each seller is responsible for ordering, delivering, and '
                        'refunding products.',
                        style: MyStyle.tx9B.copyWith(
                          fontFamily: 'NotoSansKR-Regular',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return reqDialog();
                            });
                      },
                      child: Container(
                        height: 48,
                        color: MyColor.purple,
                        child: const Center(
                          child: Text(
                            'Pay for it',
                            textAlign: TextAlign.center,
                            style: MyStyle.tx14W,
                          ),
                        ),
                      ),
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

  Widget purchaseDialog() {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      titlePadding: const EdgeInsets.only(top: 20),
      title: const Text(
        'There is no saved order information.',
        style: MyStyle.tx17B,
        textAlign: TextAlign.center,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Please register your address in the \n profile.',
            style: MyStyle.tx13B.copyWith(
              fontSize: 12,
              color: MyColor.black.withOpacity(0.5),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      contentPadding: const EdgeInsets.only(top: 5, bottom: 20),
      actionsPadding: const EdgeInsets.all(0),
      actions: [
        const Divider(
          height: 0,
          thickness: 0,
          indent: 0,
          endIndent: 0,
          color: Colors.grey,
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Center(
            child: Text(
              'Confirm',
              style: MyStyle.tx17B.copyWith(
                fontSize: 15,
                fontFamily: 'NotoSansKR-Medium',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }

  void shippingRequestSheet() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        context: context,
        isScrollControlled: true,
        builder: (BuildContext context) {
          return SizedBox(
            height: (MediaQuery.of(context).size.height * 0.6) + 60,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: MyColor.white,
                    ),
                    height: (MediaQuery.of(context).size.height * 0.5) + 62,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 6.0, horizontal: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Please select a request for delivery.',
                                style: MyStyle.tx17B.copyWith(
                                  fontFamily: 'NotoSansKR-Regular',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                ),
                              ),
                              Image.asset(
                                'assets/icons/blueCheck.png',
                                height: 24,
                                width: 24,
                              )
                            ],
                          ),
                        ),
                        const Divider(
                          thickness: 0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 6.0, horizontal: 12),
                          child: Text(
                            'Please contact us in advance before delivery.',
                            style: MyStyle.tx17B.copyWith(
                              fontFamily: 'NotoSansKR-Regular',
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        const Divider(
                          thickness: 0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 6.0, horizontal: 12),
                          child: Text(
                            'Please leave it at the security office in \n'
                            'case of absence.',
                            style: MyStyle.tx17B.copyWith(
                              fontFamily: 'NotoSansKR-Regular',
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        const Divider(
                          thickness: 0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 6.0, horizontal: 12),
                          child: Text(
                            'Please put it in front of the door in case\n'
                            'of absence.',
                            style: MyStyle.tx17B.copyWith(
                              fontFamily: 'NotoSansKR-Regular',
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        const Divider(
                          thickness: 0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 6.0, horizontal: 12),
                          child: Text(
                            'Please be careful when delivering products \n '
                            'at risk of damage.',
                            style: MyStyle.tx17B.copyWith(
                              fontFamily: 'NotoSansKR-Regular',
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        const Divider(
                          thickness: 0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 6.0, horizontal: 12),
                          child: Text(
                            'Please put it in the delivery box.',
                            style: MyStyle.tx17B.copyWith(
                              fontFamily: 'NotoSansKR-Regular',
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        const Divider(
                          thickness: 0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 6.0, horizontal: 12),
                          child: Text(
                            'Type it yourself.',
                            style: MyStyle.tx17B.copyWith(
                              fontFamily: 'NotoSansKR-Regular',
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: MyColor.white,
                      ),
                      height: (MediaQuery.of(context).size.height * 0.15) - 72,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(
                          'Close',
                          style: MyStyle.tx20.copyWith(
                            fontWeight: FontWeight.w400,
                            color: MyColor.iosblue,
                            fontFamily: "NotoSansKR-Regular",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  Widget reqDialog() {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      titlePadding:
          const EdgeInsets.only(left: 19, right: 16, top: 19, bottom: 16),
      title: Text(
        'Please enter the required items.',
        style: MyStyle.tx17B.copyWith(
          fontFamily: 'NotoSansKR-Medium',
          fontWeight: FontWeight.w400,
          fontSize: 17,
        ),
        textAlign: TextAlign.center,
      ),
      actionsPadding: const EdgeInsets.all(0),
      actions: [
        const Divider(
          height: 0,
          thickness: 0,
          indent: 0,
          endIndent: 0,
          color: Colors.grey,
        ),
        TextButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return paymentDialog();
                });
          },
          child: Center(
            child: Text(
              'Confirm',
              style: MyStyle.tx17B.copyWith(
                fontSize: 15,
                fontFamily: 'NotoSansKR-Medium',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget paymentDialog() {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      titlePadding:
          const EdgeInsets.only(left: 19, right: 16, top: 19, bottom: 16),
      title: Text(
        'Please choose the payment method.',
        style: MyStyle.tx17B.copyWith(
          fontFamily: 'NotoSansKR-Medium',
          fontWeight: FontWeight.w400,
          fontSize: 17,
        ),
        textAlign: TextAlign.center,
      ),
      actionsPadding: const EdgeInsets.all(0),
      actions: [
        const Divider(
          height: 0,
          thickness: 0,
          indent: 0,
          endIndent: 0,
          color: Colors.grey,
        ),
        TextButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return agreeDialog();
                });
          },
          child: Center(
            child: Text(
              'Confirm',
              style: MyStyle.tx17B.copyWith(
                fontSize: 15,
                fontFamily: 'NotoSansKR-Medium',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget agreeDialog() {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      titlePadding:
          const EdgeInsets.only(left: 19, right: 16, top: 19, bottom: 16),
      title: Text(
        'Check the terms and conditions. \n'
        'Please agree.',
        style: MyStyle.tx17B.copyWith(
          fontFamily: 'NotoSansKR-Medium',
          fontWeight: FontWeight.w400,
          fontSize: 17,
        ),
        textAlign: TextAlign.center,
      ),
      actionsPadding: const EdgeInsets.all(0),
      actions: [
        const Divider(
          height: 0,
          thickness: 0,
          indent: 0,
          endIndent: 0,
          color: Colors.grey,
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, paySuccesRoute);
          },
          child: Center(
            child: Text(
              'Confirm',
              style: MyStyle.tx17B.copyWith(
                fontSize: 15,
                fontFamily: 'NotoSansKR-Medium',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
