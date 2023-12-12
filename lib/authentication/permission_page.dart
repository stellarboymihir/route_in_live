import 'package:flutter/material.dart';
import 'package:route_in_live/dialogbox/alert_dilaog_one.dart';
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
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 45,
              ),
              RichText(
                text: const TextSpan(
                  text: 'App access permission guide',
                  style: TextStyle(
                    color: MyColor.orange,
                    fontFamily: 'NotoSansKR-ExtraBold',
                    fontSize: 20,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 8.0),
                child: Text(
                  'To use OneQ Live, follow the steps below. \nYou are using selective access rights.',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style:
                      TextStyle(fontSize: 12, fontFamily: 'NotoSansKR-Medium'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: MyColor.orange),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/images/Camera.png'),
                              const SizedBox(
                                width: 5,
                              ),
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Camera',
                                      style: TextStyle(
                                          color: MyColor.orange,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      'Profile picture settings',
                                      style: TextStyle(
                                          color: MyColor.orange,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/images/Folder.png'),
                              const SizedBox(
                                width: 5,
                              ),
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Photos / Media / Files',
                                      style: TextStyle(
                                          color: MyColor.orange,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      'Utilization to register photos and videos',
                                      style: TextStyle(
                                          color: MyColor.orange,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/Alert.png'),
                            const SizedBox(
                              width: 5,
                            ),
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Notification (optional)',
                                    style: TextStyle(
                                      color: MyColor.orange,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    'Receive notification messages such as service changes and events',
                                    style: TextStyle(
                                      color: MyColor.orange,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Opacity(
                opacity: 0.3,
                child: Text(
                  '* How to change access rights ',
                  style: MyStyle.Tx12.copyWith(
                    color: MyColor.orange,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              const Text(
                '   Notification Settings > Each permission On/Off',
                style: MyStyle.Tx12,
              ),
              const SizedBox(
                height: 2,
              ),
              Opacity(
                opacity: 0.3,
                child: Text(
                  '* If the permission is denied, the function works normally It may not work. \n'
                  '* After denying, you can allow it again in the settings.',
                  style: MyStyle.Tx12.copyWith(
                    color: MyColor.orange,
                    fontWeight: FontWeight.w400,
                    height: 2,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 40.0, horizontal: 5),
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        MyColor.dorange,
                        MyColor.lorange,
                        MyColor.yellow,
                      ],
                    ),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                    ),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              const AlertDialogOne());
                    },
                    child: const Text(
                      'Confirm',
                      style: TextStyle(color: Colors.white),
                    ),

                    // ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
