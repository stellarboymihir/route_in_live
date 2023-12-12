import 'package:flutter/material.dart';
import 'package:route_in_live/authentication/login_page.dart';

import '../values/MyColor.dart';
import '../values/MyStyle.dart';

class AlertDialogThree extends StatelessWidget {
  const AlertDialogThree({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Notifications from \‘OneQ Live\' \n'
        'I would like to send',
        style: TextStyle(
          fontFamily: 'NotoSansKR',
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.center,
      ),
      content: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Alerts, sounds and icon placement\n'
            'It can be included in notifications.\n'
            'You can configure this in settings.',
            style: TextStyle(
              fontFamily: 'NotoSansKR',
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      actionsPadding: const EdgeInsets.only(bottom: 10),
      actions: [
        const Divider(
          height: 10,
          thickness: 1,
          indent: 0,
          endIndent: 0,
          color: Colors.grey,
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => const LoginPage(),
                  );
                },
                child: Text(
                  'Not Allowed',
                  style: MyStyle.Tx14.copyWith(
                    color: MyColor.lred,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 44,
              child: VerticalDivider(
                width: 27,
                thickness: 1,
                indent: 0,
                endIndent: 0,
                color: Colors.grey,
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => const LoginPage());
                },
                child: Text(
                  'Permit',
                  style: MyStyle.Tx14.copyWith(
                    color: MyColor.iosblue,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
