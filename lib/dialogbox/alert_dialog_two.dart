import 'package:flutter/material.dart';
import 'package:route_in_live/dialogbox/alert_dialog_three.dart';
import 'package:route_in_live/values/MyStyle.dart';

import '../values/MyColor.dart';

class AlertDialogTwo extends StatelessWidget {
  const AlertDialogTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        '\'OneQ Live’ is the user’s \n'
        'I\'m trying to access a photo.',
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
            'Upload a photo or video from your \n'
            'device \n'
            'To do this, allow access to your photos.',
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
                      builder: (BuildContext context) =>
                          const AlertDialogThree());
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
                      builder: (BuildContext context) =>
                          const AlertDialogThree());
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
