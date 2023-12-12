import 'package:flutter/material.dart';
import 'package:route_in_live/authentication/login_page.dart';
import '../values/MyStyle.dart';

class AlertDialogThree extends StatelessWidget {
  const AlertDialogThree({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Notifications from \‘OneQ Live\' \n'
        'I would like to send',
        style: MyStyle.tx17B,
        textAlign: TextAlign.center,
      ),
      content: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Alerts, sounds and icon placement\n'
            'It can be included in notifications.\n'
            'You can configure this in settings.',
            style: MyStyle.tx13B,
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
                child: const Text(
                  'Not Allowed',
                  style: MyStyle.tx17N,
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
                child: const Text(
                  'Permit',
                  style: MyStyle.tx17P,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
