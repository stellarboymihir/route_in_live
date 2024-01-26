import 'package:flutter/material.dart';
import 'package:route_in_live/values/MyColor.dart';

import '../../values/MyStyle.dart';

class CelebrityApp extends StatefulWidget {
  const CelebrityApp({super.key});

  @override
  State<CelebrityApp> createState() => _CelebrityAppState();
}

class _CelebrityAppState extends State<CelebrityApp> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController activityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: MyColor.white,
        title: Text(
          'Requesting a celebrity',
          style: MyStyle.tx14B.copyWith(
            fontSize: 14,
            // fontFamily: 'NotoSansKR-Regular',
          ),
        ),
        centerTitle: true,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: Divider(
            thickness: 1,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/effect.png',
                    height: 72,
                    width: 136,
                    alignment: Alignment.center,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'When you become a celebrity, '
                            'you can be offered  and product sales.',
                        style: MyStyle.tx14B.copyWith(
                          fontSize: 14,
                        ),
                      ),
                      TextSpan(
                        text: ' broadcasting ',
                        style: MyStyle.tx14B.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                      ),
                      TextSpan(
                        text: ' and ',
                        style: MyStyle.tx14B.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: ' product sales.',
                        style: MyStyle.tx14B.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),

                // Name Field
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Name',
                    textAlign: TextAlign.start,
                    style: MyStyle.tx16O,
                  ),
                ),

                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1),
                      borderSide: const BorderSide(
                        color: MyColor.orange,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1),
                      borderSide: const BorderSide(
                        color: MyColor.orange,
                      ),
                    ),
                    contentPadding: const EdgeInsets.all(8),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: MyColor.orange,
                      ),
                    ),
                    hintText: 'Please type your name.',
                    hintStyle: TextStyle(
                      color: MyColor.orangeO,
                    ),
                  ),
                  style: MyStyle.tx14O,
                  controller: nameController,
                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 10,
                ),

                //   Phone Number
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Phone number',
                    textAlign: TextAlign.start,
                    style: MyStyle.tx16O,
                  ),
                ),

                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1),
                      borderSide: const BorderSide(
                        color: MyColor.orange,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1),
                      borderSide: const BorderSide(
                        color: MyColor.orange,
                      ),
                    ),
                    contentPadding: const EdgeInsets.all(8),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: MyColor.orange,
                      ),
                    ),
                    hintText: 'Please enter your cell phone number.',
                    hintStyle: TextStyle(
                      color: MyColor.orangeO,
                    ),
                  ),
                  style: MyStyle.tx14O,
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 10,
                ),

                // E-mail
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'E-mail',
                    textAlign: TextAlign.start,
                    style: MyStyle.tx16O,
                  ),
                ),

                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1),
                      borderSide: const BorderSide(
                        color: MyColor.orange,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1),
                      borderSide: const BorderSide(
                        color: MyColor.orange,
                      ),
                    ),
                    contentPadding: const EdgeInsets.all(8),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: MyColor.orange,
                      ),
                    ),
                    hintText: 'Please enter your email.',
                    hintStyle: TextStyle(
                      color: MyColor.orangeO,
                    ),
                  ),
                  style: MyStyle.tx14O,
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 10,
                ),

                // DOB
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'The date of one’s birth',
                    textAlign: TextAlign.start,
                    style: MyStyle.tx16O,
                  ),
                ),
                Text(
                  'It is used as an auxiliary means to check celebrity information.',
                  textAlign: TextAlign.start,
                  style: MyStyle.tx12O,
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1),
                      borderSide: const BorderSide(
                        color: MyColor.orange,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1),
                      borderSide: const BorderSide(
                        color: MyColor.orange,
                      ),
                    ),
                    contentPadding: const EdgeInsets.all(8),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: MyColor.orange,
                      ),
                    ),
                    hintText: 'Please enter your date of birth.',
                    hintStyle: TextStyle(
                      color: MyColor.orangeO,
                    ),
                  ),
                  style: MyStyle.tx14O,
                  controller: dobController,
                  keyboardType: TextInputType.datetime,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 10,
                ),

                // Activity
                Text(
                  'The activity channel address.',
                  textAlign: TextAlign.start,
                  style: MyStyle.tx16O,
                ),
                Text(
                  'Instagram, YouTube, etc.',
                  textAlign: TextAlign.start,
                  style: MyStyle.tx12O,
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(1),
                        borderSide: const BorderSide(
                          color: MyColor.orange,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(1),
                        borderSide: const BorderSide(
                          color: MyColor.orange,
                        ),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: MyColor.orange,
                        ),
                      ),
                      hintText:
                          'Please enter it comfortably in a free form such as SNS account, self-introduction.',
                      hintStyle: TextStyle(
                        color: MyColor.orangeO,
                      ),
                    ),
                    maxLines: 5,
                    minLines: 1,
                    style: MyStyle.tx14O,
                    controller: activityController,
                    keyboardType: TextInputType.text,
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return applyDialog();
                        });
                  },
                  child: Container(
                    height: 44,
                    width: MediaQuery.of(context).size.width,
                    color: MyColor.orange,
                    child: Center(
                      child: Text(
                        'Application',
                        style: MyStyle.tx14W.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget applyDialog() {
    return AlertDialog(
      title: Text(
        'I applied for a celebrity',
        textAlign: TextAlign.center,
        style: MyStyle.tx17B.copyWith(
          fontWeight: FontWeight.w400,
        ),
      ),
      content: Text(
        'A separate information email will be sent after reviewing '
        'the information you entered.',
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
          thickness: 1,
        ),
        InkWell(
          onTap: () {
            Navigator.pop(context);
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return essentialDialog();
                });
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
        ),
      ],
    );
  }

  Widget essentialDialog() {
    return AlertDialog(
      title: Text(
        'Request to enter essential information.',
        textAlign: TextAlign.center,
        style: MyStyle.tx17B.copyWith(
          fontWeight: FontWeight.w400,
        ),
      ),
      content: Text(
        'Please enter all the information to become a celebrity.',
        textAlign: TextAlign.center,
        style: MyStyle.tx13B.copyWith(
          color: MyColor.black.withOpacity(0.5),
        ),
      ),
      contentPadding:
          const EdgeInsets.only(left: 4, right: 4, top: 10, bottom: 0),
      actionsPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      actions: [
        Text(
          'Required: Name, mobile phone number, email, date of birth, '
          'activity channel address,',
          textAlign: TextAlign.center,
          style: MyStyle.tx13B.copyWith(
            color: MyColor.lred,
          ),
        ),
        const Divider(
          thickness: 1,
        ),
        InkWell(
          onTap: () {
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
        ),
      ],
    );
  }
}
