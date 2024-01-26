import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../../values/MyColor.dart';
import '../../../values/MyStyle.dart';

class SetNotification extends StatefulWidget {
  const SetNotification({super.key});

  @override
  State<SetNotification> createState() => _SetNotificationState();
}

class _SetNotificationState extends State<SetNotification> {
  bool status0 = false;
  bool status1 = false;
  bool status2 = false;
  bool status3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: MyColor.white,
        title: Text(
          'Set notification',
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Live Notification',
                  style: MyStyle.tx14B.copyWith(fontSize: 14),
                ),
                const Spacer(),
                FlutterSwitch(
                  width: 51.0,
                  height: 32.0,
                  toggleSize: 20.0,
                  value: status0,
                  borderRadius: 30.0,
                  padding: 4.0,
                  showOnOff: false,
                  onToggle: (val) {
                    status0 = val;
                    // Show the dialog when the switch is toggled
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Center(
                            child: Text(
                              'Push notification has been changed to '
                              'consent and reception status.',
                              textAlign: TextAlign.center,
                              style: MyStyle.tx17B
                                  .copyWith(fontWeight: FontWeight.w700),
                            ),
                          ),
                          actionsPadding: EdgeInsets.zero,
                          contentPadding: EdgeInsets.zero,
                          actions: [
                            // Cancel button
                            Divider(
                              thickness: 1,
                            ),
                            TextButton(
                              onPressed: () {
                                // Close the dialog and keep the switch value unchanged
                                Navigator.pop(context);
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return pushDialog();
                                    });
                              },
                              child: Center(
                                child: Text(
                                  'Confirm',
                                  style: MyStyle.tx14B.copyWith(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                            // OK button
                          ],
                        );
                      },
                    );
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 20,
              child: Divider(
                thickness: 1,
              ),
            ),
            Row(
              children: [
                Text(
                  'Feed Notification',
                  style: MyStyle.tx14B.copyWith(fontSize: 14),
                ),
                const Spacer(),
                FlutterSwitch(
                    width: 51.0,
                    height: 32.0,
                    toggleSize: 20.0,
                    value: status1,
                    borderRadius: 30.0,
                    padding: 4.0,
                    showOnOff: false,
                    onToggle: (val) {
                      setState(() {
                        status1 = val;
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Center(
                                child: Text(
                                  'Push notification has been changed to '
                                  'consent and reception status.',
                                  textAlign: TextAlign.center,
                                  style: MyStyle.tx17B
                                      .copyWith(fontWeight: FontWeight.w700),
                                ),
                              ),
                              actionsPadding: EdgeInsets.zero,
                              contentPadding: EdgeInsets.zero,
                              actions: [
                                // Cancel button
                                Divider(
                                  thickness: 1,
                                ),
                                TextButton(
                                  onPressed: () {
                                    // Close the dialog and keep the switch value unchanged
                                    Navigator.pop(context);
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return pushDialog();
                                        });
                                  },
                                  child: Center(
                                    child: Text(
                                      'Confirm',
                                      style: MyStyle.tx14B.copyWith(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                                // OK button
                              ],
                            );
                          },
                        );
                      });
                    }),
              ],
            ),
            const SizedBox(
              height: 20,
              child: Divider(
                thickness: 1,
              ),
            ),
            Row(
              children: [
                Text(
                  'Store notification',
                  style: MyStyle.tx14B.copyWith(fontSize: 14),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return consentDialog();
                        });
                  },
                  child: FlutterSwitch(
                      width: 51.0,
                      height: 32.0,
                      toggleSize: 20.0,
                      value: status2,
                      borderRadius: 30.0,
                      padding: 4.0,
                      showOnOff: false,
                      onToggle: (val) {
                        setState(() {
                          status2 = val;
                        });
                      }),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
              child: Divider(
                thickness: 1,
              ),
            ),
            Row(
              children: [
                Text(
                  'Etc Notification',
                  style: MyStyle.tx14B.copyWith(fontSize: 14),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return consentDialog();
                        });
                  },
                  child: FlutterSwitch(
                      width: 51.0,
                      height: 32.0,
                      toggleSize: 20.0,
                      value: status3,
                      borderRadius: 30.0,
                      padding: 4.0,
                      showOnOff: false,
                      onToggle: (val) {
                        setState(() {
                          status3 = val;
                        });
                      }),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
              child: Divider(
                thickness: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget consentDialog() {
    return AlertDialog(
      title: Center(
        child: Text(
          'Push notification has been changed to '
          'consent and reception status.',
          textAlign: TextAlign.center,
          style: MyStyle.tx17B.copyWith(fontWeight: FontWeight.w700),
        ),
      ),
      actionsPadding: EdgeInsets.zero,
      contentPadding: EdgeInsets.zero,
      actions: [
        // Cancel button
        Divider(
          thickness: 1,
        ),
        TextButton(
          onPressed: () {
            // Close the dialog and keep the switch value unchanged
            Navigator.pop(context);
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return pushDialog();
                });
          },
          child: Center(
            child: Text(
              'Confirm',
              style: MyStyle.tx14B.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
          ),
        ),
        // OK button
      ],
    );
  }

  Widget pushDialog() {
    return AlertDialog(
      title: Center(
        child: Text(
          'The Push notification '
          'reception has been changed to '
          'Disagreement and Rejection status.',
          textAlign: TextAlign.center,
          style: MyStyle.tx17B.copyWith(fontWeight: FontWeight.w700),
        ),
      ),
      actionsPadding: EdgeInsets.zero,
      contentPadding: EdgeInsets.zero,
      actions: [
        // Cancel button
        Divider(
          thickness: 1,
        ),
        TextButton(
          onPressed: () {
            // Close the dialog and keep the switch value unchanged
            Navigator.pop(context);
          },
          child: Center(
            child: Text(
              'Confirm',
              style: MyStyle.tx14B.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
          ),
        ),
        // OK button
      ],
    );
  }
}
