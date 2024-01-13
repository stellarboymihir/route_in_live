import 'package:flutter/material.dart';
import '../../../values/MyStyle.dart';
import 'alert_dialog_two.dart';

class AlertDialogOne extends StatelessWidget {
  const AlertDialogOne({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      titlePadding: const EdgeInsets.only(top: 20),
      title: const Text(
        '\‘One Q Live’ on camera \n'
        'I\'m trying to approach.',
        style: MyStyle.tx17B,
        textAlign: TextAlign.center,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'You can take photos and videos.',
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
                  Navigator.pop(context);
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const AlertDialogTwo();
                      });
                  // Navigator.pop(context);
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
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const AlertDialogTwo();
                      });
                  // Navigator.pop(context);
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
