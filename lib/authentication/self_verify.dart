import 'package:flutter/material.dart';
import 'package:route_in_live/authentication/register/profile/profile_settings.dart';
import 'package:route_in_live/constants/routes.dart';
import 'package:route_in_live/values/MyStyle.dart';

import '../values/MyColor.dart';

class SelfVerificationPage extends StatefulWidget {
  const SelfVerificationPage({super.key});

  @override
  State<SelfVerificationPage> createState() => _SelfVerificationPageState();
}

TextEditingController phoneController = TextEditingController();
TextEditingController authNumController = TextEditingController();

final _formKey = GlobalKey<FormState>();

class _SelfVerificationPageState extends State<SelfVerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Self-certification',
          style: MyStyle.tx14W
              .copyWith(color: Colors.black, fontFamily: 'NotoSansKR-Regular'),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: Divider(
            thickness: 0,
            height: 0,
            color: MyColor.black.withOpacity(0.1),
          ),
        ),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Cell Phone Field
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Cell phone number',
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
                      borderSide: const BorderSide(
                        color: MyColor.orange,
                      ),
                    ),
                    border: const OutlineInputBorder(),
                    hintText: 'Enter your cell phone number',
                    hintStyle: TextStyle(
                      color: MyColor.orangeO,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  controller: phoneController,
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // Request Authentication Button
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  margin: EdgeInsets.all(8.0),
                  height: 44,
                  width: MediaQuery.of(context).size.width,
                  decoration: (phoneController.text.isNotEmpty)
                      ? const BoxDecoration(color: MyColor.orange)
                      : BoxDecoration(
                          color: MyColor.orangeO,
                        ),
                  child: const Center(
                    child: Text(
                      'Request authentication',
                      style: MyStyle.tx14W,
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              // Authentication Number
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Enter the authentication number',
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
                      borderSide: const BorderSide(
                        width: 1,
                        color: MyColor.orange,
                      ),
                    ),
                    border: const OutlineInputBorder(),
                    hintText:
                        'Enter the authentication number you received by text.',
                    hintStyle: TextStyle(
                      color: MyColor.orangeO,
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                    ),
                  ),
                  controller: authNumController,
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              //For Button

              //Certified Button
              InkWell(
                onTap: () {
                  //Routing for Next Page
                  Navigator.pop(context);
                  Navigator.pushNamed(
                    context,
                    profileSettingsRoute,
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.all(8.0),
                  height: 44,
                  width: MediaQuery.of(context).size.width,
                  decoration: (phoneController.text.isNotEmpty &&
                          authNumController.text.isNotEmpty)
                      ? const BoxDecoration(color: MyColor.orange)
                      : BoxDecoration(color: MyColor.orangeO),
                  child: const Center(
                    child: Text(
                      'Certified',
                      style: MyStyle.tx14W,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
