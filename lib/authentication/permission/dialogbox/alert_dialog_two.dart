import 'package:flutter/material.dart';
import 'package:route_in_live/authentication/permission/dialogbox/alert_dialog_three.dart';
import 'package:route_in_live/values/MyStyle.dart';

class AlertDialogTwo extends StatelessWidget {
  const AlertDialogTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      titlePadding: const EdgeInsets.only(top: 20),
      title: const Text(
        '\'OneQ Live’ is the user’s \n'
        'I\'m trying to access a photo.',
        style: MyStyle.tx17B,
        textAlign: TextAlign.center,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Upload a photo or video from your \n'
            'device \n'
            'To do this, allow access to your photos.',
            style: MyStyle.tx13B.copyWith(fontSize: 12),
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
                  showDialog(
                      context: context,
                      builder: (BuildContext context) =>
                          const AlertDialogThree());
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
