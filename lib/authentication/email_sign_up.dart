import 'package:flutter/material.dart';
import 'package:route_in_live/authentication/pass_sign_page.dart';
import 'package:route_in_live/values/MyStyle.dart';

import '../constants/routes.dart';
import '../values/MyColor.dart';

class EmailSignUp extends StatefulWidget {
  const EmailSignUp({super.key});

  @override
  State<EmailSignUp> createState() => _SignUpState();
}

TextEditingController emailController = TextEditingController();
final _formKey = GlobalKey<FormState>();

class _SignUpState extends State<EmailSignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign Up',
          style: MyStyle.tx14W.copyWith(color: Colors.black),
          // textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'ID',
                textAlign: TextAlign.start,
                style: MyStyle.tx14O.copyWith(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter some text';
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
                  hintText: 'Enter your email',
                  hintStyle: TextStyle(
                    color: MyColor.orangeO,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  setState(() {});
                },
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            //For Button
            InkWell(
              onTap: () {
                // if (_formKey.currentState?.validate() == true) {
                //   ScaffoldMessenger.of(context).showSnackBar(
                //     const SnackBar(
                //       content: Text('Process Data'),
                //     ),
                //   );
                // }
                Navigator.pushNamed(
                  context,
                  passSignUpRoute,
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 44,
                  width: 350,
                  decoration: (emailController.text.isNotEmpty)
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
