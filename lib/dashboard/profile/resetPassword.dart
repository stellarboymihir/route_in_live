import 'package:flutter/material.dart';
import 'package:route_in_live/constants/routes.dart';

import '../../values/MyColor.dart';
import '../../values/MyStyle.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController passController = TextEditingController();
  TextEditingController dTypepassController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Change Password',
          style: MyStyle.tx14W
              .copyWith(color: Colors.black, fontFamily: 'NotoSansKR-Regular'),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: Divider(
            thickness: 0,
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
                    hintText: 'Please enter a password.',
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
                  'Verify Password',
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
                    hintText: 'Please re-enter your password.',
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
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return changePass();
                      });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 44,
                    width: MediaQuery.of(context).size.width,
                    decoration: (passController.text.isNotEmpty &&
                            dTypepassController.text.isNotEmpty)
                        ? const BoxDecoration(color: MyColor.orange)
                        : BoxDecoration(color: MyColor.orangeO),
                    child: const Center(
                      child: Text(
                        'Reset password',
                        style: MyStyle.tx14W,
                      ),
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

  Widget changePass() {
    return AlertDialog(
      title: Text(
        'Changing the password',
        textAlign: TextAlign.center,
        style: MyStyle.tx17B.copyWith(
          fontWeight: FontWeight.w400,
        ),
      ),
      content: Text(
        'Please log in with the changed password.',
        textAlign: TextAlign.center,
        style: MyStyle.tx13B.copyWith(
          color: MyColor.black.withOpacity(0.5),
        ),
      ),
      contentPadding:
          const EdgeInsets.only(left: 8, right: 8, top: 10, bottom: 0),
      actionsPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      actions: [
        const Divider(
          thickness: 0,
        ),
        InkWell(
          onTap: () {
            Navigator.pop(context);
            Navigator.pop(context);
          },
          child: SizedBox(
            height: 40,
            child: Center(
              child: Text(
                'Confirm',
                style: MyStyle.tx17B.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
