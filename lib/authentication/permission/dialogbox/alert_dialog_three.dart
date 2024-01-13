import 'package:flutter/material.dart';
import 'package:route_in_live/authentication/login_page.dart';
import 'package:route_in_live/constants/routes.dart';
import '../../../values/MyStyle.dart';

class AlertDialogThree extends StatelessWidget {
  const AlertDialogThree({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      titlePadding: const EdgeInsets.only(top: 20),
      title: Text(
        'Notifications from \‘OneQ Live\' \n'
        'I would like to send',
        style: MyStyle.tx17B.copyWith(fontSize: 15),
        textAlign: TextAlign.center,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Alerts, sounds and icon placement\n'
            'It can be included in notifications.\n'
            'You can configure this in settings.',
            style: MyStyle.tx13B.copyWith(fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      contentPadding: const EdgeInsets.only(top: 5, bottom: 20),
      actionsPadding: const EdgeInsets.only(bottom: 0),
      actions: [
        const Divider(
          height: 0,
          thickness: 0,
          indent: 0,
          endIndent: 0,
          color: Colors.grey,
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, loginRoute);
                },
                child: Text(
                  'Not Allowed',
                  style: MyStyle.tx17N.copyWith(fontSize: 15),
                ),
              ),
            ),
            const SizedBox(
              height: 44,
              child: VerticalDivider(
                width: 0,
                thickness: 0,
                indent: 0,
                endIndent: 0,
                color: Colors.grey,
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, loginRoute);
                },
                child: Text(
                  'Permit',
                  style: MyStyle.tx17P.copyWith(fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
