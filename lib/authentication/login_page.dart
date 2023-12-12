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
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 153),
            child: Center(
              child: Image.asset('assets/images/logo.png'),
            ),
          ),
          // const SizedBox(
          //   width: 10,
          //   height: 40,
          // ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 1.0),
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
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'ID',
                hintText: 'Please enter your email.',
              ),
              controller: TextEditingController(),
              keyboardType: TextInputType.emailAddress,
            ),
          ),

          const Text(
            'Password',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: MyColor.orange,
              fontWeight: FontWeight.w400,
              fontSize: 13.0,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                hintText: 'Please enter a password.',
              ),
              obscureText: true,
            ),
          ),
          SizedBox(
            height: 40,
            width: 304,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: MyColor.orange,
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

          const Text(
            'Forgot ID/Password?',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: MyColor.black,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/kakao.png'),
              Image.asset('assets/images/naver.png'),
              Image.asset('assets/images/google.png'),
              Image.asset('assets/images/apple.png'),
            ],
          ),
          const Text(
            'Do you need general membership registration?',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: MyColor.black,
            ),
          ),
        ],
      ),
    );
  }
}
