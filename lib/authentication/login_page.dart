import 'package:flutter/material.dart';
import 'package:route_in_live/values/MyColor.dart';
import 'package:route_in_live/values/MyStyle.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Color emailBorderColor = MyColor.orangeO;
  Color passwordBorderColor = MyColor.orangeO;
  Color emailHintColor = MyColor.orangeO;
  Color passwordHintColor = MyColor.orangeO;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                style: MyStyle.tx13O,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: emailBorderColor,
                    ),
                  ),
                  border: const OutlineInputBorder(),
                  hintText: 'Please enter your email.',
                  hintStyle: TextStyle(
                    color: emailHintColor,
                  ),
                ),
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  setState(() {
                    emailBorderColor = (value.isEmpty
                        ? MyStyle.tx14OP
                        : MyStyle.tx14O) as Color;
                    emailHintColor = (value.isEmpty
                        ? MyStyle.tx14OP
                        : MyStyle.tx14O) as Color;
                  });
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
              child: Text(
                'Password',
                style: MyStyle.tx13O,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: passwordBorderColor,
                    ),
                  ),
                  border: const OutlineInputBorder(),
                  hintText: 'Please enter a password.',
                  hintStyle: TextStyle(
                    color: passwordHintColor,
                  ),
                ),
                controller: passwordController,
                onChanged: (value) {
                  setState(() {
                    passwordBorderColor = (value.isEmpty
                        ? MyStyle.tx14OP
                        : MyStyle.tx14O) as Color;
                    passwordHintColor = (value.isEmpty
                        ? MyStyle.tx14OP
                        : MyStyle.tx14O) as Color;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                top: 20,
              ),
              child: ElevatedButton(
                onPressed: () {
                  if (emailController.text.isNotEmpty &&
                      passwordController.text.isNotEmpty) {}
                },
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(304, 44),
                    backgroundColor: (emailController.text.isNotEmpty &&
                            passwordController.text.isNotEmpty)
                        ? MyColor.orangeO
                        : MyColor.orange,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    )),
                child: const Text(
                  'Log In',
                  style: MyStyle.tx14W,
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
                style: MyStyle.tx10,
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
                style: MyStyle.tx10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
