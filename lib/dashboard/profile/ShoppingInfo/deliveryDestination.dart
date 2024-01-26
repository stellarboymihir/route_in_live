import 'package:flutter/material.dart';

import '../../../values/MyColor.dart';
import '../../../values/MyStyle.dart';

class Delivery extends StatefulWidget {
  const Delivery({super.key});

  @override
  State<Delivery> createState() => _DeliveryState();
}

final _formKey = GlobalKey<FormState>();
TextEditingController recipentController = TextEditingController();
TextEditingController addressController = TextEditingController();
TextEditingController detailController = TextEditingController();
TextEditingController phoneController = TextEditingController();

class _DeliveryState extends State<Delivery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: MyColor.white,
        title: Text(
          'Delivery destination management',
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
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Name Field
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'The recipient',
                    textAlign: TextAlign.start,
                    style: MyStyle.tx16O,
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
                      hintText: 'Please enter the name of the recipient.',
                      hintStyle: TextStyle(
                        color: MyColor.orangeO,
                      ),
                    ),
                    style: MyStyle.tx14O,
                    controller: recipentController,
                    keyboardType: TextInputType.text,
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                //   Address You Recieve
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'The address you receive',
                    textAlign: TextAlign.start,
                    style: MyStyle.tx16O,
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
                      hintText: 'Please enter your home address.',
                      hintStyle: TextStyle(
                        color: MyColor.orangeO,
                      ),
                    ),
                    style: MyStyle.tx14O,
                    controller: addressController,
                    keyboardType: TextInputType.text,
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
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
                      hintText: 'Please enter the detailed address.',
                      hintStyle: TextStyle(
                        color: MyColor.orangeO,
                      ),
                    ),
                    style: MyStyle.tx14O,
                    controller: detailController,
                    keyboardType: TextInputType.text,
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                // Phone Number
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Phone number',
                    textAlign: TextAlign.start,
                    style: MyStyle.tx16O,
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
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),

                InkWell(
                  onTap: () {
                    // showDialog(
                    //     context: context,
                    //     builder: (BuildContext context) {
                    //       return withdrawalDialog();
                    //     });
                  },
                  child: Container(
                    height: 44,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4),
                    width: MediaQuery.of(context).size.width,
                    color: MyColor.orange,
                    child: Center(
                      child: Text(
                        'Save the delivery address',
                        style: MyStyle.tx14W.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
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
}
