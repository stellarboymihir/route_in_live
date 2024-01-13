import 'package:flutter/material.dart';
import 'package:route_in_live/authentication/register/findingid/id.dart';
import 'package:route_in_live/values/MyColor.dart';
import 'package:route_in_live/values/MyStyle.dart';

import '../../../constants/routes.dart';

class FindingId extends StatefulWidget {
  const FindingId({super.key});

  @override
  State<FindingId> createState() => _FindingIdState();
}

class _FindingIdState extends State<FindingId> {
  final _idFinder = GlobalKey<FormState>();
  TextEditingController cellNumber = TextEditingController();
  TextEditingController authNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: Divider(
            thickness: 0,
            color: MyColor.black.withOpacity(0.1),
          ),
        ),
        title: Text(
          'Finding the ID',
          style: MyStyle.tx14W.copyWith(
            color: Colors.black,
          ),
        ),
      ),
      body: Form(
        key: _idFinder,
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
                  controller: cellNumber,
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
                    decoration: (cellNumber.text.isNotEmpty)
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
                  controller: authNumber,
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
                        return confirmDialog();
                      });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 44,
                    decoration: (authNumber.text.isNotEmpty)
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

  Widget confirmDialog() {
    return AlertDialog(
      title: Text(
        'With a regular membership,\n'
        'There is no account registered.',
        textAlign: TextAlign.center,
        style: MyStyle.tx17B.copyWith(fontSize: 17),
      ),
      content: Text(
        textAlign: TextAlign.center,
        'I wonder if you signed up for social\n'
        ' login.\n'
        'Please check again.',
        style: MyStyle.tx13B.copyWith(
          color: Colors.black.withOpacity(0.5),
        ),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
      // contentPadding: const EdgeInsets.only(top: 8, bottom: 5),
      actionsPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
      actions: [
        const Divider(
          thickness: 0,
          color: Colors.grey,
        ),
        // const SizedBox(
        //   height: 8,
        // ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(
              context,
              showIdRoute,
            );
          },
          child: SizedBox(
            height: 35,
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
