import 'package:flutter/material.dart';
import 'package:route_in_live/authentication/self_verify.dart';
import 'package:route_in_live/values/MyStyle.dart';

import '../values/MyColor.dart';

class PassSignUp extends StatefulWidget {
  const PassSignUp({super.key});

  @override
  State<PassSignUp> createState() => _PassSignUpState();
}

TextEditingController passController = TextEditingController();
TextEditingController dTypepassController = TextEditingController();

final _formKey = GlobalKey<FormState>();

class _PassSignUpState extends State<PassSignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign Up',
          style: MyStyle.tx14W.copyWith(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Password Field
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Password',
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
                  hintText: 'Please enter your PIN number',
                  hintStyle: TextStyle(
                    color: MyColor.orangeO,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                controller: passController,
                obscureText: true,
                onChanged: (value) {
                  setState(() {});
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            //Rechecking Password Field
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Checking the password',
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
                  hintText: 'Please enter the password one more time',
                  hintStyle: TextStyle(
                    color: MyColor.orangeO,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                controller: dTypepassController,
                obscureText: true,
                onChanged: (value) {
                  setState(() {});
                },
              ),
            ),

            const SizedBox(
              height: 50,
            ),
            //For Button
            InkWell(
              onTap: () {
                //Routing for Next Page
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const SelfVerificationPage()));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 44,
                  width: 350,
                  decoration: (passController.text.isNotEmpty &&
                          dTypepassController.text.isNotEmpty)
                      ? const BoxDecoration(color: MyColor.orange)
                      : BoxDecoration(color: MyColor.orangeO),
                  child: const Center(
                    child: Text(
                      'Next',
                      style: MyStyle.tx14W,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
