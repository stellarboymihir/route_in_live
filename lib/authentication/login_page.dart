import 'package:flutter/material.dart';
import 'package:route_in_live/authentication/terms_condition_page.dart';
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
  //
  // Color emailBorderColor = MyColor.orangeO;
  // Color
  // = MyColor.orangeO;
  // Color emailHintColor = MyColor.orangeO;
  // Color passwordHintColor = MyColor.orangeO;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 80),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset('assets/images/logo.png'),
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
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: MyColor.orangeO,
                      ),
                    ),
                    border: const OutlineInputBorder(),
                    hintText: 'Please enter your email.',
                    hintStyle: TextStyle(
                      color: MyColor.orangeO,
                    ),
                  ),
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    setState(() {
                      // emailBorderColor = (value.isEmpty
                      //     ? MyStyle.tx14OP
                      //     : MyStyle.tx14O) as Color;
                      // emailHintColor = (value.isEmpty
                      //     ? MyStyle.tx14OP
                      //     : MyStyle.tx14O) as Color;
                    });
                  },
                ),
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
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: MyColor.orangeO,
                      ),
                    ),
                    border: const OutlineInputBorder(),
                    hintText: 'Please enter a password.',
                    hintStyle: TextStyle(
                      color: MyColor.orangeO,
                    ),
                  ),
                  controller: passwordController,
                  onChanged: (value) {
                    setState(() {
                      // passwordBorderColor = (value.isEmpty
                      //     ? MyStyle.tx14OP
                      //     : MyStyle.tx14O) as Color;
                      // passwordHintColor = (value.isEmpty
                      //     ? MyStyle.tx14OP
                      //     : MyStyle.tx14O) as Color;
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
                // child: ElevatedButton(
                //   onPressed: () {
                //     if (emailController.text.isNotEmpty &&
                //         passwordController.text.isNotEmpty) {}
                //   },
                //   style: ElevatedButton.styleFrom(
                //       backgroundColor: (emailController.text.isNotEmpty &&
                //               passwordController.text.isNotEmpty)
                //           ? MyColor.orangeGrad
                //           : MyColor.orangeO,
                //       shape: const RoundedRectangleBorder(
                //         borderRadius: BorderRadius.zero,
                //       )),
                //   child: const Text(
                //     'Log In',
                //     style: MyStyle.tx14W,
                //   ),
                // ),
                child: InkWell(
                  onTap: () {
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
                    height: 40,
                    width: 320,
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
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Forgot ID/Password?',
                  style: MyStyle.tx10,
                ),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Modal Sheet for Kakoo
                  InkWell(
                    onTap: () {
                      bottomSheet1();
                    },
                    child: Image.asset(
                      'assets/images/kakao.png',
                    ),
                  ),

                  //Modal Sheet for Naver
                  InkWell(
                    onTap: () {
                      bottomSheet2();
                    },
                    child: Image.asset(
                      'assets/images/naver.png',
                    ),
                  ),

                  //Modal Sheet for Google
                  InkWell(
                    onTap: () {
                      bottomSheet3();
                    },
                    child: Image.asset(
                      'assets/images/google.png',
                    ),
                  ),
                  Image.asset('assets/images/apple.png'),
                ],
              ),
              const SizedBox(
                height: 5.0,
              ),
              Align(
                alignment: Alignment.center,
                child: TextButton(
                  // style: MyStyle.tx10,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TermConditionPage(),
                        ));
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
    );
  }

  void bottomSheet1() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return Column(
            // mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 185,
              ),
              Text(
                'Login',
                style: MyStyle.tx18.copyWith(fontSize: 17, letterSpacing: 0.15),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 40,
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
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
                height: 7,
              ),
              SizedBox(
                height: 40,
                width: 300,
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
                height: 15,
              ),
              IconButton(
                color: Colors.white,
                icon: const Icon(Icons.cancel_outlined),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }

  void bottomSheet2() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return Column(
            // mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 185,
              ),
              Text(
                'Login',
                style: MyStyle.tx18.copyWith(fontSize: 17, letterSpacing: 0.15),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 40,
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: MyColor.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      )),
                  child: Text(
                    'Naver\'s simple login',
                    style: MyStyle.tx14Blk.copyWith(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              SizedBox(
                height: 40,
                width: 300,
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
                    style: MyStyle.tx14BlkM
                        .copyWith(color: Colors.white, fontSize: 13),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              IconButton(
                color: Colors.white,
                icon: const Icon(Icons.cancel_outlined),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }

  void bottomSheet3() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return Column(
            // mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 185,
              ),
              Text(
                'Login',
                style: MyStyle.tx18.copyWith(fontSize: 17, letterSpacing: 0.15),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 40,
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: MyColor.googlered,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      )),
                  child: Text(
                    'Google simple login',
                    style: MyStyle.tx14Blk.copyWith(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              SizedBox(
                height: 40,
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: MyColor.googlered,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: Text(
                    'Log in with a different Google account',
                    style: MyStyle.tx14BlkM
                        .copyWith(color: Colors.white, fontSize: 13),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              IconButton(
                color: Colors.white,
                icon: const Icon(Icons.cancel_outlined),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }
}
