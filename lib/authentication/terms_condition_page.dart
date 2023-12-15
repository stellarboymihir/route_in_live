import 'package:flutter/material.dart';
import 'package:route_in_live/values/MyColor.dart';
import 'package:route_in_live/values/MyStyle.dart';

class TermConditionPage extends StatefulWidget {
  const TermConditionPage({super.key});

  @override
  State<TermConditionPage> createState() => _TermConditionPageState();
}

class _TermConditionPageState extends State<TermConditionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Terms and Conditions',
          style: MyStyle.tx14OB.copyWith(color: Colors.black87),
        ),
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(5),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.check_circle_outline_outlined,
                  color: MyColor.black.withOpacity(0.5),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'All agreements to the terms and conditions',
                  style: MyStyle.tx12B.copyWith(
                    color: MyColor.black.withOpacity(0.5),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: MyColor.blackO,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Terms and conditions',
                  textAlign: TextAlign.start,
                  style: MyStyle.tx14W.copyWith(fontWeight: FontWeight.w700),
                ),
                const Icon(
                  Icons.check_circle_outline,
                  color: Colors.white,
                  size: 24,
                ),
              ],
            ),
          ),
          Scrollbar(
            child: ListView(
              shrinkWrap: true,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Article 1 (Purpose) ',
                    style: MyStyle.tx12B.copyWith(fontWeight: FontWeight.w700),
                    children: const <TextSpan>[
                      TextSpan(
                          text:
                              'Thank you for using the service provided by OneQ Co.,'
                              'Ltd. (hereinafter referred to as "Company"). The'
                              'company is a company that makes it more convenient for'
                              ' you to use various Internet and mobile services.  '
                              ' These terms and conditions stipulate basic matters such '
                              'as rights, obligations and responsibilities, conditions',
                          style: MyStyle.tx12B),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: MyColor.blackO,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Personal Information Collection',
                  textAlign: TextAlign.start,
                  style: MyStyle.tx14W.copyWith(fontWeight: FontWeight.w700),
                ),
                const Icon(
                  Icons.check_circle_outline,
                  color: Colors.white,
                  size: 24,
                ),
              ],
            ),
          ),
          Scrollbar(
            child: ListView(
              shrinkWrap: true,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Article 1 (Purpose) ',
                    style: MyStyle.tx12B.copyWith(fontWeight: FontWeight.w700),
                    children: const <TextSpan>[
                      TextSpan(
                          text:
                              'Thank you for using the service provided by OneQ Co.,'
                              'Ltd. (hereinafter referred to as "Company"). The'
                              'company is a company that makes it more convenient for'
                              ' you to use various Internet and mobile services.  '
                              ' These terms and conditions stipulate basic matters such '
                              'as rights, obligations and responsibilities, conditions',
                          style: MyStyle.tx12B),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
