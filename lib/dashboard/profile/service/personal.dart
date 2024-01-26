import 'package:flutter/material.dart';
import 'package:route_in_live/values/MyColor.dart';
import 'package:route_in_live/values/MyStyle.dart';

class Personal extends StatefulWidget {
  const Personal({super.key});

  @override
  State<Personal> createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: MyColor.white,
        title: Text(
          'Personal information processing policy',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
          child: Column(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Items of personal information you collect.\n',
                      style: MyStyle.tx12B.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    WidgetSpan(
                      child: SizedBox(
                        height: 40,
                      ),
                    ),
                    TextSpan(
                      text: 'Items of personal information you collect.'
                          'Routine Live collects the minimum amount of personal '
                          'information necessary for contract implementation, '
                          'user identification, service improvement, new '
                          'service development, membership registration, and counseling '
                          'on service provision.Routine Live collects essential items '
                          'essential to perform the essential functions of the service and '
                          'options for providing more specialized services with the prior '
                          'consent of the user.',
                      style: MyStyle.tx12B.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Items of personal information you collect.\n',
                      style: MyStyle.tx12B.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    WidgetSpan(
                      child: SizedBox(
                        height: 40,
                      ),
                    ),
                    TextSpan(
                      text: 'Items of personal information you collect.'
                          'Routine Live collects the minimum amount of personal '
                          'information necessary for contract implementation, '
                          'user identification, service improvement, new '
                          'service development, membership registration, and counseling '
                          'on service provision.Routine Live collects essential items '
                          'essential to perform the essential functions of the service and '
                          'options for providing more specialized services with the prior '
                          'consent of the user.',
                      style: MyStyle.tx12B.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Items of personal information you collect.\n',
                      style: MyStyle.tx12B.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    WidgetSpan(
                      child: SizedBox(
                        height: 40,
                      ),
                    ),
                    TextSpan(
                      text: 'Items of personal information you collect.'
                          'Routine Live collects the minimum amount of personal '
                          'information necessary for contract implementation, '
                          'user identification, service improvement, new '
                          'service development, membership registration, and counseling '
                          'on service provision.Routine Live collects essential items '
                          'essential to perform the essential functions of the service and '
                          'options for providing more specialized services with the prior '
                          'consent of the user.',
                      style: MyStyle.tx12B.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Items of personal information you collect.\n',
                      style: MyStyle.tx12B.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    WidgetSpan(
                      child: SizedBox(
                        height: 40,
                      ),
                    ),
                    TextSpan(
                      text: 'Items of personal information you collect.'
                          'Routine Live collects the minimum amount of personal '
                          'information necessary for contract implementation, '
                          'user identification, service improvement, new '
                          'service development, membership registration, and counseling '
                          'on service provision.Routine Live collects essential items '
                          'essential to perform the essential functions of the service and '
                          'options for providing more specialized services with the prior '
                          'consent of the user.',
                      style: MyStyle.tx12B.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Items of personal information you collect.\n',
                      style: MyStyle.tx12B.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    WidgetSpan(
                      child: SizedBox(
                        height: 40,
                      ),
                    ),
                    TextSpan(
                      text: 'Items of personal information you collect.'
                          'Routine Live collects the minimum amount of personal '
                          'information necessary for contract implementation, '
                          'user identification, service improvement, new '
                          'service development, membership registration, and counseling '
                          'on service provision.Routine Live collects essential items '
                          'essential to perform the essential functions of the service and '
                          'options for providing more specialized services with the prior '
                          'consent of the user.',
                      style: MyStyle.tx12B.copyWith(
                        fontWeight: FontWeight.w400,
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
}
