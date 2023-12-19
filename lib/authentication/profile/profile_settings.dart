import 'package:flutter/material.dart';

import '../../values/MyColor.dart';
import '../../values/MyStyle.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({super.key});

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

TextEditingController nickController = TextEditingController();
final _formKey = GlobalKey<FormState>();

class _ProfileSettingsState extends State<ProfileSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile Settings',
          style: MyStyle.tx14W
              .copyWith(color: Colors.black, fontFamily: 'NotoSansKR-Regular'),
        ),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 160,
              width: 160,
              decoration: BoxDecoration(
                border: Border.all(
                    // color: MyColor.circleOrange,
                    // gradient: MyColor.circleOrange,
                    ),
                shape: BoxShape.circle,
                color: Colors.orange.shade200,
              ),
              child: Container(
                height: 160,
                width: 160,
                decoration: BoxDecoration(
                  border: Border.all(
                      // color: MyColor.circleOrange,
                      // gradient: MyColor.circleOrange,
                      ),
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Image.asset('assets/images/colorcam.png'),
              ),
            ),
            // Nickname Field
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Nickname',
                textAlign: TextAlign.start,
                style: MyStyle.tx14O.copyWith(
                  fontSize: 16,
                  fontFamily: 'NotoSansKR-Regular',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(8.0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(1),
                    borderSide: BorderSide(
                      color: MyColor.orangeO,
                    ),
                  ),
                  border: const OutlineInputBorder(),
                  hintText: 'Enter your nickname',
                  hintStyle: TextStyle(
                    color: MyColor.orangeO,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                controller: nickController,
                keyboardType: TextInputType.text,
                onChanged: (value) {
                  setState(() {});
                },
              ),
            ),

            const SizedBox(
              height: 15,
            ),

            //  Setting Button
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const ProfileSettings(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 44,
                  width: 350,
                  decoration: (nickController.text.isNotEmpty)
                      ? const BoxDecoration(color: MyColor.orange)
                      : BoxDecoration(
                          color: MyColor.orangeO,
                        ),
                  child: const Center(
                    child: Text(
                      'Setting',
                      style: MyStyle.tx14W,
                    ),
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
