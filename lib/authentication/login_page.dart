import 'package:flutter/material.dart';
import 'package:route_in_live/values/MyColor.dart';
import 'package:route_in_live/values/MyStyle.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Image.asset('assets/images/logo.png'),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'ID',
              style: TextStyle(
                color: MyColor.orange,
                fontWeight: FontWeight.w400,
                fontSize: 13.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: TextField(
              style: const TextStyle(),
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: MyColor.orange,
                  ),
                ),
                hintText: 'Please enter your email.',
                hintStyle: TextStyle(
                  color: MyColor.orange.withOpacity(0.3),
                ),
              ),
              controller: TextEditingController(),
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
            child: Text(
              'Password',
              style: TextStyle(
                color: MyColor.orange,
                fontWeight: FontWeight.w400,
                fontSize: 13.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: MyColor.orange,
                  ),
                ),
                border: const OutlineInputBorder(),
                hintText: 'Please enter a password.',
                hintStyle: TextStyle(
                  color: MyColor.orange.withOpacity(0.3),
                ),
              ),
              obscureText: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              top: 20,
            ),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(304, 44),
                  backgroundColor: MyColor.orange.withOpacity(0.3),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  )),
              child: const Text(
                'Log In',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 2.0,
          ),
          const Align(
            alignment: Alignment.center,
            child: Text(
              'Forgot ID/Password?',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: MyColor.black,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/kakao.png'),
              Image.asset('assets/images/naver.png'),
              Image.asset('assets/images/google.png'),
              Image.asset('assets/images/apple.png'),
            ],
          ),
          const SizedBox(
            height: 2.0,
          ),
          const Align(
            alignment: Alignment.center,
            child: Text(
              'Do you need general membership registration?',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: MyColor.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
