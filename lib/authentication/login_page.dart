import 'package:flutter/material.dart';
import 'package:route_in_live/authentication/terms_condition_page.dart';
import 'package:route_in_live/values/MyColor.dart';
import 'package:route_in_live/values/MyStyle.dart';

import '../constants/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // padding: const EdgeInsets.symmetric(vertical: 80),
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.10,
                ),
                Center(
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.fill,
                    height: MediaQuery.of(context).size.height * 0.11,
                    width: MediaQuery.of(context).size.width * 0.33,
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
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10.0),
                      isDense: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: MyColor.orangeO,
                        ),
                      ),
                      border: const OutlineInputBorder(),
                      hintText: 'Please enter your email.',
                      hintStyle: MyStyle.tx14O.copyWith(
                        color: MyColor.orangeO,
                      ),
                    ),
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Password',
                    style: MyStyle.tx13O,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(10.0),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: MyColor.orangeO,
                          ),
                        ),
                        border: const OutlineInputBorder(),
                        hintText: 'Please enter a password.',
                        hintStyle: MyStyle.tx14O.copyWith(
                          color: MyColor.orangeO,
                        )),
                    controller: passwordController,
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                    top: 20,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, dashboardRoute);
                      if (_formKey.currentState?.validate() == true) {
                        // Perform login logic here
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Process Data'),
                          ),
                        );
                      }
                    },
                    child: Container(
                      height: 44,
                      decoration: (emailController.text.isNotEmpty &&
                              passwordController.text.isNotEmpty)
                          ? const BoxDecoration(gradient: MyColor.orangeGrad)
                          : BoxDecoration(gradient: MyColor.inOrangeGrad),
                      child: const Center(
                        child: Text(
                          'Log In',
                          style: MyStyle.tx14W,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        idPassFindRoute,
                      );
                    },
                    child: SizedBox(
                      child: Text(
                        'Forgot ID/Password?',
                        style: MyStyle.tx10.copyWith(fontSize: 11),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // Modal Sheet for Kakoo
                      InkWell(
                        onTap: () {
                          bottomSheet1();
                        },
                        child: Image.asset(
                          'assets/images/kakao.png',
                          fit: BoxFit.fill,
                          height: 56,
                          width: 56,
                        ),
                      ),

                      //Modal Sheet for Naver
                      InkWell(
                        onTap: () {
                          bottomSheet2();
                        },
                        child: Image.asset(
                          'assets/images/naver.png',
                          fit: BoxFit.fill,
                          height: 56,
                          width: 56,
                        ),
                      ),

                      //Modal Sheet for Google
                      InkWell(
                        onTap: () {
                          bottomSheet3();
                        },
                        child: Image.asset(
                          'assets/images/google.png',
                          fit: BoxFit.fill,
                          height: 56,
                          width: 56,
                        ),
                      ),
                      Image.asset(
                        'assets/images/apple.png',
                        fit: BoxFit.fill,
                        height: 56,
                        width: 56,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    // style: MyStyle.tx10,
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        termsAndConditionRoute,
                      );
                    },
                    child: const Text(
                      'Do you need general membership registration?',
                      style: MyStyle.tx10,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void bottomSheet1() {
    showModalBottomSheet(
        backgroundColor: MyColor.black.withOpacity(0.7),
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: (MediaQuery.sizeOf(context).height) * 0.68,
                ),
                Text(
                  'Login',
                  style:
                      MyStyle.tx18.copyWith(fontSize: 17, letterSpacing: 0.15),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  // height: 40,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        backgroundColor: MyColor.yellow,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        )),
                    child: Text(
                      'Kakao Talk simple login',
                      style: MyStyle.tx14Blk,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: MyColor.yellow,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: Text(
                      'Log in with a different Kakao account',
                      style: MyStyle.tx14BlkM,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/icons/Circle.png',
                    height: 24,
                    width: 24,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          );
        });
  }

  void bottomSheet2() {
    showModalBottomSheet(
        backgroundColor: MyColor.black.withOpacity(0.7),
        context: context,
        isScrollControlled: true,
        builder: (BuildContext context) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.68,
                ),
                Text(
                  'Login',
                  style:
                      MyStyle.tx18.copyWith(fontSize: 17, letterSpacing: 0.15),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        backgroundColor: MyColor.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        )),
                    child: Text(
                      'Naver\'s simple login',
                      style: MyStyle.tx14W.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: MyColor.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: Text(
                      'Log in with a different NAVER account',
                      style: MyStyle.tx14W,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/icons/Circle.png',
                    height: 24,
                    width: 24,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          );
        });
  }

  void bottomSheet3() {
    showModalBottomSheet(
        backgroundColor: MyColor.black.withOpacity(0.7),
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.68,
                ),
                Text(
                  'Login',
                  style:
                      MyStyle.tx18.copyWith(fontSize: 17, letterSpacing: 0.15),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        backgroundColor: MyColor.mred,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        )),
                    child: Text(
                      'Google simple login',
                      style: MyStyle.tx14W.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: MyColor.mred,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: const Text(
                      'Log in with a different Google account',
                      style: MyStyle.tx14W,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/icons/Circle.png',
                    height: 24,
                    width: 24,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          );
        });
  }
}
