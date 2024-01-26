import 'package:flutter/material.dart';
import 'package:route_in_live/values/MyColor.dart';

import '../../../values/MyStyle.dart';

class TermsPage extends StatefulWidget {
  const TermsPage({super.key});

  @override
  State<TermsPage> createState() => _TermsPageState();
}

class _TermsPageState extends State<TermsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: MyColor.white,
        title: Text(
          'Terms and conditions',
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
                      text: 'Article 1 (Purpose)\n',
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
                      text:
                          'Thank you for using the service provided by OneQ Co., Ltd. '
                          ' (hereinafter referred to as "Company").'
                          'The company is a company that makes it more convenient for'
                          'you to use various Internet and mobile services.   '
                          'These terms and conditions stipulate basic matters such as rights,'
                          'obligations and responsibilities, conditions and procedures required'
                          ' to use the service, so please take a little time to read them carefully.',
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
                      text: 'Article 1 (Purpose)\n',
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
                      text:
                          'Thank you for using the service provided by OneQ Co., Ltd. '
                          ' (hereinafter referred to as "Company").'
                          'The company is a company that makes it more convenient for'
                          'you to use various Internet and mobile services.   '
                          'These terms and conditions stipulate basic matters such as rights,'
                          'obligations and responsibilities, conditions and procedures required'
                          ' to use the service, so please take a little time to read them carefully.',
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
                      text: 'Article 1 (Purpose)\n',
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
                      text:
                          'Thank you for using the service provided by OneQ Co., Ltd. '
                          ' (hereinafter referred to as "Company").'
                          'The company is a company that makes it more convenient for'
                          'you to use various Internet and mobile services.   '
                          'These terms and conditions stipulate basic matters such as rights,'
                          'obligations and responsibilities, conditions and procedures required'
                          ' to use the service, so please take a little time to read them carefully.',
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
                      text: 'Article 1 (Purpose)\n',
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
                      text:
                          'Thank you for using the service provided by OneQ Co., Ltd. '
                          ' (hereinafter referred to as "Company").'
                          'The company is a company that makes it more convenient for'
                          'you to use various Internet and mobile services.   '
                          'These terms and conditions stipulate basic matters such as rights,'
                          'obligations and responsibilities, conditions and procedures required'
                          ' to use the service, so please take a little time to read them carefully.',
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
                      text: 'Article 1 (Purpose)\n',
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
                      text:
                          'Thank you for using the service provided by OneQ Co., Ltd. '
                          ' (hereinafter referred to as "Company").'
                          'The company is a company that makes it more convenient for'
                          'you to use various Internet and mobile services.   '
                          'These terms and conditions stipulate basic matters such as rights,'
                          'obligations and responsibilities, conditions and procedures required'
                          ' to use the service, so please take a little time to read them carefully.',
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
