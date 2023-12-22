import 'package:flutter/material.dart';
import 'package:route_in_live/authentication/register/findingid/findingid.dart';
import 'package:route_in_live/values/MyStyle.dart';

import '../../../constants/routes.dart';
import '../../../values/MyColor.dart';
import 'findingpass.dart';

class FindingEmailPass extends StatefulWidget {
  const FindingEmailPass({super.key});

  @override
  State<FindingEmailPass> createState() => _FindingPassState();
}

TextEditingController emailFinder = TextEditingController();
TextEditingController passNextFinder = TextEditingController();

class _FindingPassState extends State<FindingEmailPass> {
  final _passFinder = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Finding a password',
          style: MyStyle.tx14W.copyWith(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 1,
      ),
      body: Form(
        key: _passFinder,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'ID',
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
                  hintText: 'Enter your email',
                  hintStyle: TextStyle(
                    color: MyColor.orangeO,
                  ),
                ),
                controller: emailFinder,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  setState(() {});
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  passFindRoute,
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 44,
                  width: 345,
                  decoration: (passNextFinder.text.isNotEmpty)
                      ? const BoxDecoration(color: MyColor.orange)
                      : BoxDecoration(
                          color: MyColor.orangeO,
                        ),
                  child: Center(
                    child: Text(
                      'Next',
                      style: MyStyle.tx14W.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    idCertifyFindRoute,
                  );
                },
                child: Text(
                  'Did you forget your ID?',
                  style: MyStyle.tx10.copyWith(
                    fontFamily: 'NotoSansKR-Medium',
                    color: MyColor.black.withOpacity(0.7),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
