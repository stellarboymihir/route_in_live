import 'package:flutter/material.dart';

import '../values/MyColor.dart';
import '../values/MyStyle.dart';
import 'alert_dialog_two.dart';

class AlertDialogOne extends StatelessWidget {
  const AlertDialogOne({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        '\‘One Q Live’ on camera \n'
        'I\'m trying to approach.',
        style: MyStyle.tx17B,
        textAlign: TextAlign.center,
      ),
      content: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'You can take photos and videos.',
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
                      builder: (BuildContext context) =>
                          const AlertDialogTwo());
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
                      builder: (BuildContext context) =>
                          const AlertDialogTwo());
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
