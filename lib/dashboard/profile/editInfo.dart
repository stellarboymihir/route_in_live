import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:route_in_live/constants/routes.dart';
import 'package:route_in_live/values/MyColor.dart';
import '../../values/MyStyle.dart';

class EditInformation extends StatefulWidget {
  const EditInformation({super.key});

  @override
  State<EditInformation> createState() => _EditInformationState();
}

class _EditInformationState extends State<EditInformation> {
  TextEditingController editName = TextEditingController();
  File? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        automaticallyImplyLeading: false,
        title: Text(
          'Profile',
          style: MyStyle.tx14B.copyWith(
            fontSize: 14,
            // fontFamily: 'NotoSansKR-Regular',
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(
              'assets/icons/cart.png',
              height: 24,
              width: 24,
              color: Colors.black,
            ),
          ),
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: Divider(
            thickness: 1,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: InkWell(
                onTap: () {
                  imageBottomSheet();
                },
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // gradient: MyColor.circleOrange,
                        border: Border.all(width: 3, color: MyColor.orange),
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/images/img7.png',
                          width: 152,
                          height: 152,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 5,
                      left: 150,
                      right: 10,
                      child: InkWell(
                        onTap: () {
                          // showDialog(
                          //     context: context,
                          //     builder: (BuildContext context) {
                          //       return deleteDialog();
                          //     });
                        },
                        child: Image.asset(
                          'assets/icons/Circle.png',
                          color: MyColor.orange,
                          height: 24,
                          width: 24,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 40,
                ),
                // TextField(
                //   readOnly: true,
                //   decoration: InputDecoration(
                //     labelText: "Input Nama",
                //     hintText: "Input Nama",
                //     border: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(20.0),
                //     ),
                //   ),
                // ),

                Container(
                  width: 100,
                  height: 30,
                  child: TextField(
                    style: MyStyle.tx20B.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                    // enabled: false,
                    // readOnly: false,
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      // border: OutlineInputBorder(),
                      border: InputBorder.none,
                      hintText: "Run",
                      hintStyle: MyStyle.tx20B.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                // TextFormField(
                //   controller: editName,
                //   decoration: InputDecoration(
                //     hintText: 'Run',
                //     hintStyle: MyStyle.tx20B.copyWith(
                //       fontWeight: FontWeight.w700,
                //     ),
                //   ),
                //   validator: (String? value) {
                //     if (value == null || value.isEmpty) {
                //       return 'Please enter some text';
                //     }
                //     return null;
                //   },
                // ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/icons/pencil.png',
                  color: MyColor.yellowamber,
                  height: 24,
                  width: 24,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 44,
              width: MediaQuery.of(context).size.width,
              color: MyColor.orange,
              child: Center(
                child: Text(
                  'Save',
                  style: MyStyle.tx16W,
                ),
              ),
            ),
            Divider(
              thickness: 0,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, resetPasswordRoute);
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                height: 40,
                child: Text(
                  'Change Password',
                  style: MyStyle.tx14B.copyWith(
                    fontSize: 14,
                    fontFamily: 'NotoSansKR-Regular',
                  ),
                ),
              ),
            ),
            const Divider(
              thickness: 0,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              height: 40,
              child: Text(
                'Referral registration',
                style: MyStyle.tx14B.copyWith(
                  fontSize: 14,
                  fontFamily: 'NotoSansKR-Regular',
                ),
              ),
            ),
            const Divider(
              thickness: 0,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              height: 40,
              child: Text(
                'Point',
                style: MyStyle.tx14B.copyWith(
                  fontSize: 14,
                  fontFamily: 'NotoSansKR-Regular',
                ),
              ),
            ),
            const Divider(
              thickness: 0,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              height: 40,
              child: Text(
                'Log Out',
                style: MyStyle.tx14B.copyWith(
                  fontSize: 14,
                  fontFamily: 'NotoSansKR-Regular',
                ),
              ),
            ),
            const Divider(
              thickness: 0,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              height: 40,
              child: Text(
                'Withdrawal',
                style: MyStyle.tx14B.copyWith(
                  fontSize: 14,
                  fontFamily: 'NotoSansKR-Regular',
                ),
              ),
            ),
            const Divider(
              thickness: 0,
            ),
          ],
        ),
      ),
    );
  }

  void imageBottomSheet() {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                height: 132,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'Image Upload',
                        style: MyStyle.tx16B.copyWith(
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                      const Divider(),
                      InkWell(
                        onTap: () {
                          // Created a method
                          _pickerCam();
                        },
                        child: SizedBox(
                          height: 26,
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                            child: Text(
                              'Camera',
                              style: MyStyle.tx16B
                                  .copyWith(fontFamily: 'NotoSansKR-Medium'),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      const Divider(),
                      InkWell(
                        onTap: () {
                          _pickerImg();
                        },
                        child: SizedBox(
                          height: 26,
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                            child: Text(
                              'Gallery',
                              style: MyStyle.tx16B
                                  .copyWith(fontFamily: 'NotoSansKR-Medium'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 48,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: const Center(
                    child: Text(
                      'Cancel',
                      style: MyStyle.tx17B,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _pickerCam() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() {
        this.image = imageTemp;
        Navigator.pop(context);
      });
    } on PlatformException catch (e) {
      print('Failed to pick Image: $e');
    }
  }

  Future<void> _pickerImg() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() {
        this.image = imageTemp;
        Navigator.pop(context);
      });
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print('Failed to pick Image: $e');
      }
    }
  }
}
