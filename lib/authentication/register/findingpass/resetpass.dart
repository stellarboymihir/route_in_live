import 'package:flutter/material.dart';
import 'package:route_in_live/constants/routes.dart';

import '../../../values/MyColor.dart';
import '../../../values/MyStyle.dart';

class ResetPass extends StatefulWidget {
  const ResetPass({super.key});

  @override
  State<ResetPass> createState() => _ResetPassState();
}

class _ResetPassState extends State<ResetPass> {
  final _resetPass = GlobalKey<FormState>();
  TextEditingController resetPass = TextEditingController();
  TextEditingController checkResetPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reset the password'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Form(
        key: _resetPass,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Password',
                style: MyStyle.tx16O,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter some Text';
                  }
                  return null;
                },
                style: MyStyle.tx14O,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(1),
                    borderSide: const BorderSide(
                      color: MyColor.orange,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(1),
                    borderSide: const BorderSide(
                      color: MyColor.orange,
                    ),
                  ),
                  contentPadding: const EdgeInsets.all(8),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: MyColor.orange,
                    ),
                  ),
                  hintText: 'Please enter your PIN number.',
                  hintStyle: TextStyle(
                    color: MyColor.orangeO,
                  ),
                ),
                controller: resetPass,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {});
                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.center,
                  height: 44,
                  decoration: (resetPass.text.isNotEmpty)
                      ? const BoxDecoration(color: MyColor.orange)
                      : BoxDecoration(
                          color: MyColor.orangeO,
                        ),
                  child: Text(
                    'Request authentication',
                    style: MyStyle.tx14W.copyWith(fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Checking the password',
                style: MyStyle.tx16O,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter some Text';
                  }
                  return null;
                },
                style: MyStyle.tx14O,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(1),
                    borderSide: const BorderSide(
                      color: MyColor.orange,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(1),
                    borderSide: const BorderSide(
                      color: MyColor.orange,
                    ),
                  ),
                  contentPadding: const EdgeInsets.all(8),
                  border: const OutlineInputBorder(),
                  hintText:
                      'Enter the authentication number you received by text.',
                  hintStyle: MyStyle.tx14O.copyWith(color: MyColor.orangeO),
                ),
                controller: checkResetPass,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {});
                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return passDialog();
                    });
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.center,
                  height: 44,
                  decoration: (checkResetPass.text.isNotEmpty)
                      ? const BoxDecoration(color: MyColor.orange)
                      : BoxDecoration(
                          color: MyColor.orangeO,
                        ),
                  child: Text(
                    'Reset the password',
                    style: MyStyle.tx14W.copyWith(fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget passDialog() {
    return AlertDialog(
      title: Text(
        'Changing the password',
        textAlign: TextAlign.center,
        style: MyStyle.tx17B.copyWith(fontSize: 16),
      ),
      content: Text(
        textAlign: TextAlign.center,
        'Please log in with the changed \n password.',
        style: MyStyle.tx13B.copyWith(
          color: Colors.black.withOpacity(0.5),
        ),
      ),
      contentPadding: const EdgeInsets.only(top: 8, bottom: 5),
      actionsPadding: const EdgeInsets.all(10),
      actions: [
        const Divider(
          height: 0,
          thickness: 0,
          indent: 0,
          endIndent: 0,
          color: Colors.grey,
        ),
        const SizedBox(
          height: 8,
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(
              context,
              dashboardRoute,
            );
          },
          child: Center(
            child: Text(
              // textAlign: TextAlign.center,
              'Confirm',
              style: MyStyle.tx17B.copyWith(
                fontFamily: 'NotoSansKR-Medium',
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
