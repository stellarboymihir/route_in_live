import 'package:flutter/material.dart';
import 'package:route_in_live/authentication/permission/dialogbox/alert_dilaog_one.dart';
import 'package:route_in_live/values/MyColor.dart';
import 'package:route_in_live/values/MyStyle.dart';

class PermissionPage extends StatefulWidget {
  const PermissionPage({super.key});

  @override
  State<PermissionPage> createState() => _PermissionPageState();
}

class _PermissionPageState extends State<PermissionPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 40),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 45,
                ),
                Text(
                  'App access permission guide',
                  style: MyStyle.tx24.copyWith(fontSize: 22),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'To use OneQ Live, follow the steps below. \nYou are using selective access rights.',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: MyStyle.tx12B,
                ),
                const SizedBox(
                  height: 35,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: MyColor.orange),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/Camera.png'),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Camera',
                                  style: MyStyle.tx14OB,
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  'Profile picture settings',
                                  style: MyStyle.tx12O
                                      .copyWith(letterSpacing: 1.5),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/Folder.png'),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Photos / Media / Files',
                                    style: MyStyle.tx14OB),
                                const SizedBox(height: 5),
                                Text(
                                  'Utilization to register photos and videos',
                                  style: MyStyle.tx12O
                                      .copyWith(letterSpacing: 1.5),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/Alert.png'),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Notification (optional)',
                                  style: MyStyle.tx14OB,
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  'Receive notification messages such as service changes and events',
                                  style: MyStyle.tx12O
                                      .copyWith(letterSpacing: 1.5),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Opacity(
                  opacity: 0.5,
                  child: Text(
                    '* How to change access rights ',
                    style: MyStyle.tx12OP,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                const Text(
                  '   Notification Settings > Each permission On/Off',
                  style: MyStyle.tx12B,
                ),
                const SizedBox(
                  height: 2,
                ),
                Opacity(
                  opacity: 0.5,
                  child: Text(
                    '* If the permission is denied, the function works normally It may not work. \n'
                    '* After denying, you can allow it again in the settings.',
                    style: MyStyle.tx12OP,
                  ),
                ),
                SizedBox(
                  height: height * 0.1,
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                            const AlertDialogOne());
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 44,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      gradient: MyColor.orangeGrad,
                    ),
                    child: const Text(
                      'Confirm',
                      style: MyStyle.tx14W,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
