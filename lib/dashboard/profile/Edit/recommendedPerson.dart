import 'package:flutter/material.dart';

import '../../../values/MyColor.dart';
import '../../../values/MyStyle.dart';

class RecommendedPerson extends StatefulWidget {
  const RecommendedPerson({super.key});

  @override
  State<RecommendedPerson> createState() => _RecommendedPersonState();
}

class _RecommendedPersonState extends State<RecommendedPerson> {
  final formKey = GlobalKey<FormState>();
  TextEditingController recommendController = TextEditingController();
  TextEditingController couponController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Register as a recommended person',
          style: MyStyle.tx14W.copyWith(
            color: Colors.black,
            fontFamily: 'NotoSansKR-Regular',
          ),
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
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Recommended Code Field
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Enter the recommended code',
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
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1),
                      borderSide: const BorderSide(
                        color: MyColor.orange,
                      ),
                    ),
                    contentPadding: const EdgeInsets.all(8.0),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1),
                      borderSide: const BorderSide(
                        color: MyColor.orange,
                      ),
                    ),
                    border: const OutlineInputBorder(),
                    hintText: 'Please enter the recommended code.',
                    hintStyle: TextStyle(
                      color: MyColor.orangeO,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  controller: recommendController,
                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // Recommended Button
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  margin: EdgeInsets.all(8.0),
                  height: 44,
                  width: MediaQuery.of(context).size.width,
                  decoration: (recommendController.text.isNotEmpty)
                      ? const BoxDecoration(color: MyColor.orange)
                      : BoxDecoration(
                          color: MyColor.orangeO,
                        ),
                  child: const Center(
                    child: Text(
                      'Recommend',
                      style: MyStyle.tx14W,
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              // My Recommendation Code
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'My recommendation code',
                      textAlign: TextAlign.start,
                      style: MyStyle.tx14O.copyWith(
                        fontSize: 16,
                        fontFamily: 'NotoSansKR-Regular',
                      ),
                    ),
                  ),
                  Container(
                    height: 24,
                    width: 56,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 4, vertical: 2.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: MyColor.orange,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icons/note.png',
                          height: 12,
                          width: 10,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          'Copy',
                          style: MyStyle.tx12W.copyWith(
                            fontFamily: 'NotoSansKR-Medium',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: MyColor.black.withOpacity(0.05),
                height: 88,
                margin: const EdgeInsets.all(8.0),
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text(
                    'JPL3H',
                    style: MyStyle.tx16O.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),

              //For Button

              //Invite a friend Button
              InkWell(
                onTap: () {
                  //Routing for Next Page
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return recommendDialog();
                      });
                },
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.all(8.0),
                  height: 44,
                  width: MediaQuery.of(context).size.width,
                  color: MyColor.orange,
                  child: const Center(
                    child: Text(
                      'Invite a friend',
                      style: MyStyle.tx14W,
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

  Widget recommendDialog() {
    return AlertDialog(
      title: Text(
        'Recommendation successful',
        textAlign: TextAlign.center,
        style: MyStyle.tx17B.copyWith(
          fontWeight: FontWeight.w400,
        ),
      ),
      content: Text(
        'I have recommended the code you entered.',
        textAlign: TextAlign.center,
        style: MyStyle.tx13B.copyWith(
          color: MyColor.black.withOpacity(0.5),
        ),
      ),
      // contentPadding:
      //     const EdgeInsets.only(left: 8, right: 8, top: 10, bottom: 0),
      // actionsPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      actions: [
        const Divider(
          thickness: 1,
        ),
        InkWell(
          onTap: () {
            Navigator.pop(context);
            Navigator.pop(context);
            // Navigator.pushNamed(context, recommendedRoute);
          },
          child: SizedBox(
            height: 30,
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
