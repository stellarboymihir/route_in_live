import 'package:flutter/material.dart';
import 'package:route_in_live/constants/routes.dart';

import '../../../values/MyColor.dart';
import '../../../values/MyStyle.dart';

class FindingPass extends StatefulWidget {
  const FindingPass({super.key});

  @override
  State<FindingPass> createState() => _FindingPassState();
}

class _FindingPassState extends State<FindingPass> {
  final _passFinder = GlobalKey<FormState>();
  TextEditingController cellNumberOne = TextEditingController();
  TextEditingController authNumberOne = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Finding a password',
          style: MyStyle.tx14W.copyWith(
            color: Colors.black,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: Divider(
            thickness: 0,
            color: MyColor.black.withOpacity(0.1),
          ),
        ),
      ),
      body: Form(
        key: _passFinder,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Cell Phone Number',
                  style: MyStyle.tx16O,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter some Text';
                    }
                    return null;
                  },
                  style: MyStyle.tx14O,
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
                    hintText: 'Enter your cell phone number',
                    hintStyle: TextStyle(
                      color: MyColor.orangeO,
                    ),
                  ),
                  controller: cellNumberOne,
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 44,
                    decoration: (cellNumberOne.text.isNotEmpty)
                        ? const BoxDecoration(color: MyColor.orange)
                        : BoxDecoration(
                            color: MyColor.orangeO,
                          ),
                    child: Text(
                      'Request authentication',
                      style:
                          MyStyle.tx14W.copyWith(fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Enter the authentication number',
                  style: MyStyle.tx16O,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter some Text';
                    }
                    return null;
                  },
                  style: MyStyle.tx14O,
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
                    border: const OutlineInputBorder(),
                    hintText:
                        'Enter the authentication number you received by text.',
                    hintStyle: MyStyle.tx14O.copyWith(color: MyColor.orangeO),
                  ),
                  controller: authNumberOne,
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return confirmPassDialog();
                      });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 44,
                    decoration: (authNumberOne.text.isNotEmpty)
                        ? const BoxDecoration(color: MyColor.orange)
                        : BoxDecoration(
                            color: MyColor.orangeO,
                          ),
                    child: Text(
                      'Certified',
                      style:
                          MyStyle.tx14W.copyWith(fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget confirmPassDialog() {
    return AlertDialog(
      title: Text(
        'There are no results to be \n'
        'shown',
        textAlign: TextAlign.center,
        style: MyStyle.tx17B.copyWith(fontSize: 17),
      ),
      content: Text(
        textAlign: TextAlign.center,
        'This is an unregistered email or cell\n phone.\n'
        'Please check again.\n',
        style: MyStyle.tx13B.copyWith(
          color: Colors.black.withOpacity(0.5),
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
      actionsPadding:
          const EdgeInsets.only(bottom: 20, right: 0, left: 0, top: 0),
      actions: [
        const Divider(
          height: 0,
          thickness: 0,
          indent: 0,
          endIndent: 0,
          color: Colors.grey,
        ),
        const SizedBox(
          height: 8,
        ),
        InkWell(
          onTap: () {
            Navigator.pop(context);
            Navigator.pop(context);
            Navigator.pushNamed(
              context,
              resetPassRoute,
            );
          },
          child: SizedBox(
            height: 24,
            child: Center(
              child: Text(
                // textAlign: TextAlign.center,
                'Confirm',
                style: MyStyle.tx17B.copyWith(
                  fontFamily: 'NotoSansKR-Medium',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
