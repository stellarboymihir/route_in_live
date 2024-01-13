import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:route_in_live/authentication/register/findingid/find.dart';
import '../../../constants/routes.dart';
import '../../../values/MyColor.dart';
import '../../../values/MyStyle.dart';
import 'package:image_picker/image_picker.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({super.key});

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

TextEditingController nickController = TextEditingController();
final _formKey = GlobalKey<FormState>();

class _ProfileSettingsState extends State<ProfileSettings> {
  File? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile Settings',
          style: MyStyle.tx14W
              .copyWith(color: Colors.black, fontFamily: 'NotoSansKR-Regular'),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0),
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
              const SizedBox(
                height: 60,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    imageBottomSheet();
                  },
                  child: Container(
                    height: 160,
                    width: 160,
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xFFE63100),
                        Color(0xFFEE8D03),
                        Color(0xFFF2B705),
                      ], begin: Alignment.topRight, end: Alignment.topCenter),
                      shape: BoxShape.circle,
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        // border: Border.all(),
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: image == null
                          ? Image.asset('assets/images/colorcam.png')
                          : ClipOval(
                              child: Image.file(
                                image!,
                                fit: BoxFit.fill,
                              ),
                            ),
                      // Image.asset('assets/images/colorcam.png'),
                    ),
                  ),
                ),
              ),
              // Nickname Field
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Nickname',
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
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1),
                      borderSide: const BorderSide(
                        color: MyColor.orange,
                      ),
                    ),
                    border: const OutlineInputBorder(),
                    hintText: 'Enter your nickname',
                    hintStyle: TextStyle(
                      color: MyColor.orangeO,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  style: const TextStyle(
                    color: MyColor.orange,
                  ),
                  controller: nickController,
                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              ),

              const SizedBox(
                height: 15,
              ),

              //  Setting Button
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(
                    context,
                    idPassFindRoute,
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 44,
                    width: MediaQuery.of(context).size.width,
                    decoration: (nickController.text.isNotEmpty)
                        ? const BoxDecoration(color: MyColor.orange)
                        : BoxDecoration(
                            color: MyColor.orangeO,
                          ),
                    child: const Center(
                      child: Text(
                        'Setting',
                        style: MyStyle.tx14W,
                      ),
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
                        'Uploading an image',
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
