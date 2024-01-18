import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:route_in_live/constants/routes.dart';
import 'package:route_in_live/values/MyStyle.dart';

import '../../../values/MyColor.dart';

class LiveReservation extends StatefulWidget {
  const LiveReservation({super.key});

  @override
  State<LiveReservation> createState() => _LiveReservationState();
}

class _LiveReservationState extends State<LiveReservation> {
  File? image;
  final _liveRegisterKey = GlobalKey<FormState>();
  TextEditingController broadcastNameController = TextEditingController();
  TextEditingController broadcastDateController = TextEditingController();
  TextEditingController broadcastTimeController = TextEditingController();
  TextEditingController attachController = TextEditingController();
  TextEditingController dropController = TextEditingController();

  final List<String> _list = [
    '18:00 You can make a',
    '18:00 You can’t make',
    '18:00 You can makes a'
  ];

  String? _downVal;

  int _char = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Application for live broadcast reservation',
          style: MyStyle.tx14W.copyWith(
            color: MyColor.black,
            fontFamily: 'NotoSansKR-Regular',
            fontSize: 13,
          ),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(0.0),
          child: Divider(
            thickness: 1,
            color: MyColor.black.withOpacity(0.1),
          ),
        ),
      ),
      body: Form(
        key: _liveRegisterKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // *** Broadcast Name ***
                Text(
                  'Broadcast Name',
                  style:
                      MyStyle.tx16O.copyWith(fontFamily: 'NotoSansKR-Regular'),
                ),
                Text(
                  'The broadcast name is the content that is shown'
                  ' to users at the time of notice.',
                  style: MyStyle.tx10.copyWith(
                    fontSize: 11,
                    fontFamily: 'NotoSansKR-Regular',
                    decoration: TextDecoration.none,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
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
                      contentPadding: const EdgeInsets.all(8.0),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide(
                        color: MyColor.orange,
                      )),
                      hintText: 'Enter the broadcast name.',
                      hintStyle: MyStyle.tx14O.copyWith(color: MyColor.orangeO),
                    ),
                    controller: broadcastNameController,
                    keyboardType: TextInputType.text,
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                //  *** Scheduled broadcast date ***
                Text(
                  'Scheduled broadcast date',
                  style:
                      MyStyle.tx16O.copyWith(fontFamily: 'NotoSansKR-Regular'),
                ),
                Text(
                  'The broadcast will run for one hour from the selected time.',
                  style: MyStyle.tx10.copyWith(
                    fontSize: 11,
                    fontFamily: 'NotoSansKR-Regular',
                    decoration: TextDecoration.none,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 40,
                        width: MediaQuery.of(context).size.width,
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
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
                            contentPadding: const EdgeInsets.all(8.0),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide(
                              color: MyColor.orange,
                            )),
                            hintText: 'YYYY.MM.DD',
                            hintStyle:
                                MyStyle.tx14O.copyWith(color: MyColor.orangeO),
                          ),
                          controller: broadcastDateController,
                          keyboardType: TextInputType.datetime,
                          onChanged: (value) {
                            setState(() {});
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 40,
                        child: DropdownButtonFormField<String>(
                          // selectedItemBuilder: (BuildContext context) {
                          //   return _list.map<Widget>((String item) {
                          //     return Container(
                          //       alignment: Alignment.centerLeft,
                          //       // constraints:
                          //       //     const BoxConstraints(minWidth: 100),
                          //       child: Text(
                          //         item,
                          //         maxLines: 1,
                          //         style: const TextStyle(
                          //             color: Colors.blue,
                          //             fontWeight: FontWeight.w600),
                          //       ),
                          //     );
                          //   }).toList();
                          // },
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
                            contentPadding: const EdgeInsets.only(left: 4.0),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: MyColor.orange,
                              ),
                            ),
                            hintText: '00:00',
                            hintStyle:
                                MyStyle.tx14O.copyWith(color: MyColor.orangeO),
                          ),
                          value: _downVal,
                          elevation: 0,
                          isExpanded: true,
                          // style: const TextStyle(color: MyColor.orange),
                          icon: const Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: MyColor.orange,
                          ),
                          onChanged: (String? value) {
                            print(value);
                            setState(() {
                              _downVal = null;
                              _downVal = value!;
                            });
                          },
                          items: _list.map<DropdownMenuItem<String>>((list) {
                            print(list);
                            return DropdownMenuItem<String>(
                              value: list,
                              child: Text(
                                list,
                                style: MyStyle.tx14O,
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),

                // *** Quiz Progress ***
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    'Quiz progress',
                    style: MyStyle.tx16O.copyWith(
                      fontFamily: 'NotoSansKR-Regular',
                    ),
                  ),
                ),
                Text(
                  'Questions are asked through separate '
                  'consultation with OneQ Co., Ltd.',
                  style: MyStyle.tx10.copyWith(
                    fontFamily: 'NotoSansKR-Medium',
                    decoration: TextDecoration.none,
                  ),
                ),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(0),
                        minLeadingWidth: 0,
                        horizontalTitleGap: 0,
                        title: Text(
                          'Proceed',
                          style: MyStyle.tx14W.copyWith(
                            color: MyColor.black,
                          ),
                        ),
                        leading: Radio(
                          fillColor: MaterialStateProperty.all(MyColor.orange),
                          onChanged: (value) {
                            print(' Is printing $_char');

                            setState(() {
                              _char = value!;
                            });
                          },
                          value: 1,
                          groupValue: _char,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(0),
                        minLeadingWidth: 0,
                        horizontalTitleGap: 0,
                        title: Text(
                          'It does not proceed',
                          style: MyStyle.tx14W.copyWith(
                            color: MyColor.black,
                          ),
                        ),
                        leading: Radio(
                          fillColor: MaterialStateProperty.all(MyColor.orange),
                          value: 2,
                          groupValue: _char,
                          onChanged: (value) {
                            setState(() {
                              _char = value!;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),

                //   *** Live Preview Videos and Images
                Text(
                  'Live preview video and images',
                  style: MyStyle.tx16O.copyWith(
                    fontFamily: 'NotoSansKR-Regular',
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Please upload an image used as a preview video or thumbnail.',
                  style: MyStyle.tx12B.copyWith(
                    decoration: TextDecoration.none,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  height: 40,
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  width: MediaQuery.of(context).size.width,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
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
                      contentPadding: const EdgeInsets.all(8.0),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide(
                        color: MyColor.orange,
                      )),
                      hintText: 'Attach videos and images',
                      suffixIcon: InkWell(
                        onTap: () {
                          FocusScope.of(context).unfocus();
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return liveBroadcastDialog();
                              });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset(
                            'assets/icons/Attach.png',
                            height: 15,
                            width: 15,
                          ),
                        ),
                      ),
                      hintStyle: MyStyle.tx14O.copyWith(color: MyColor.orangeO),
                    ),
                    controller: attachController,
                    keyboardType: TextInputType.text,
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Attachments can be registered up to 1 photo (10mb or less)'
                  'and 1 video (350mb or less)',
                  style: MyStyle.tx12B.copyWith(
                    color: MyColor.black.withOpacity(0.7),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                // *** Select products to sell ***
                Text(
                  'Select products to sell',
                  style: MyStyle.tx16O
                      .copyWith(fontFamily: 'NotoSansKR-Regular', fontSize: 15),
                ),
                const SizedBox(
                  height: 2,
                ),
                const Text(
                  'Search for the product you want to sell and register it.',
                  style: MyStyle.tx12B,
                ),
                const SizedBox(
                  height: 15,
                ),

                // *** Buttons ***
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, sellProductRoute);
                  },
                  child: Container(
                    height: 40,
                    decoration: const BoxDecoration(
                      color: MyColor.lemonyellow,
                    ),
                    child: Center(
                      child: Text(
                        'Select products to sell',
                        style: MyStyle.tx14W.copyWith(
                          fontFamily: 'NotoSansKR-Regular',
                        ),
                      ),
                    ),
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: MyColor.black.withOpacity(0.1),
                ),
                const SizedBox(
                  height: 6,
                ),

                Center(
                  child: Text(
                    'There is no registered product.',
                    style: MyStyle.tx14W.copyWith(
                      color: MyColor.black,
                      fontFamily: 'NotoSansKR-Regular',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return requestDialog();
                        });
                  },
                  child: Container(
                    height: 40,
                    decoration: const BoxDecoration(
                      color: MyColor.purple,
                    ),
                    child: Center(
                      child: Text(
                        'Request for reservation',
                        style:
                            MyStyle.tx14W.copyWith(fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // *** Dialog Box For Live Broadcast
  Widget liveBroadcastDialog() {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      backgroundColor: Colors.transparent,
      titlePadding: const EdgeInsets.only(bottom: 4.0),
      title: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Image.asset(
          'assets/icons/Circle.png',
          height: 24,
          width: 24,
          alignment: Alignment.topRight,
        ),
      ),
      content: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: MyColor.white,
        ),
        padding: const EdgeInsets.all(20.0),
        // height: 400,
        // width: 352,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // *** Uploading an Image ***
            Row(
              children: [
                Image.asset(
                  'assets/icons/Shape.png',
                  height: 18,
                  width: 18,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Uploading an image',
                  style: MyStyle.tx16B.copyWith(
                      color: MyColor.black, fontFamily: 'NotoSansKR-Medium'),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              ' The image is an image used as a thumbnail,'
              ' and only files up to 10MB or less can be uploaded.',
              style: MyStyle.tx12B.copyWith(
                color: MyColor.black.withOpacity(0.7),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
                broadcastImageBottomSheet();
              },
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1),
                  border: Border.all(
                    color: MyColor.orange,
                    width: 1,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Uploading an image',
                    style: MyStyle.tx14O.copyWith(
                      fontSize: 13,
                      fontFamily: 'NotoSansKR-Regular',
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),

            // *** Uploading an Video ***
            Row(
              children: [
                Image.asset(
                  'assets/icons/Video.png',
                  height: 18,
                  width: 18,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Upload a preview video',
                  style: MyStyle.tx16B.copyWith(
                      color: MyColor.black, fontFamily: 'NotoSansKR-Medium'),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'The preview video is a video that viewers can watch '
              'before watching the broadcast, and only files up to '
              '350MB or less can be uploaded.',
              style: MyStyle.tx12B.copyWith(
                color: MyColor.black.withOpacity(0.7),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
                broadcastVideoBottomSheet();
              },
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1),
                  border: Border.all(
                    color: MyColor.orange,
                    width: 1,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Uploading a video',
                    style: MyStyle.tx14O.copyWith(
                      fontSize: 13,
                      fontFamily: 'NotoSansKR-Regular',
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            //   *** Text ***
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Images and preview videos are ',
                    style: MyStyle.tx12O.copyWith(
                      fontFamily: 'NotoSansKR-Medium',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: 'optional.',
                    style: MyStyle.tx12B.copyWith(
                      fontWeight: FontWeight.w700,
                      color: MyColor.orange,
                    ),
                  ),
                  TextSpan(
                    text: 'Up to ',
                    style: MyStyle.tx12O.copyWith(
                      fontFamily: 'NotoSansKR-Medium',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: 'one image ',
                    style: MyStyle.tx12B.copyWith(
                      color: MyColor.orange,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: 'and ',
                    style: MyStyle.tx12O.copyWith(
                      fontFamily: 'NotoSansKR-Medium',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: 'one preview ',
                    style: MyStyle.tx12B.copyWith(
                      color: MyColor.orange,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: 'can be uploaded.',
                    style: MyStyle.tx12O.copyWith(
                      fontFamily: 'NotoSansKR-Medium',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // *** Bottom Sheet for Image
  void broadcastImageBottomSheet() {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
              padding: const EdgeInsets.symmetric(vertical: 10),
              height: 140,
              // width: 330,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'Uploading an image',
                      style: MyStyle.tx12B.copyWith(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    const Divider(
                      thickness: 0,
                    ),
                    InkWell(
                      onTap: () {
                        // Created a method
                        _pickerCamBroadcast();
                      },
                      child: SizedBox(
                        height: 35,
                        // width: 330,
                        child: Center(
                          child: Text(
                            'Camera',
                            style: MyStyle.tx14W.copyWith(color: MyColor.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 0,
                    ),
                    InkWell(
                      onTap: () {
                        _pickerImgBroadcast();
                      },
                      child: SizedBox(
                        height: 35,
                        // width: 330,
                        child: Center(
                          child: Text(
                            'Gallery',
                            style: MyStyle.tx14W.copyWith(color: MyColor.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
                height: 48,
                // width: 330,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      'Cancel',
                      style: MyStyle.tx14W.copyWith(color: MyColor.black),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        );
      },
    );
  }

  Future<void> _pickerCamBroadcast() async {
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

  Future<void> _pickerImgBroadcast() async {
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

  // *** Bottom Sheet for Video
  void broadcastVideoBottomSheet() {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
              padding: const EdgeInsets.symmetric(vertical: 10),
              height: 140,
              // width: 330,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'Uploading a video',
                      style: MyStyle.tx12B.copyWith(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    const Divider(
                      thickness: 0,
                    ),
                    InkWell(
                      onTap: () {
                        // Created a method
                        _pickerVideoCamBroadcast();
                      },
                      child: SizedBox(
                        height: 35,
                        // width: 330,
                        child: Center(
                          child: Text(
                            'Camera',
                            style: MyStyle.tx14W.copyWith(color: MyColor.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 0,
                    ),
                    InkWell(
                      onTap: () {
                        _pickerVideoImgBroadcast();
                      },
                      child: SizedBox(
                        height: 35,
                        // width: 330,
                        child: Center(
                          child: Text(
                            'Gallery',
                            style: MyStyle.tx14W.copyWith(color: MyColor.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
                height: 48,
                // width: 330,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      'Cancel',
                      style: MyStyle.tx14W.copyWith(color: MyColor.black),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        );
      },
    );
  }

  Future<void> _pickerVideoCamBroadcast() async {
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

  Future<void> _pickerVideoImgBroadcast() async {
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

  Widget requestDialog() {
    return Center(
      child: AlertDialog(
        title: Text(
          'I applied for a live reservation',
          textAlign: TextAlign.center,
          style: MyStyle.tx17B,
        ),
        content: Text(
          'The live application has been \n'
          'completed with what you entered. \n'
          ' A separate e-mail will be sent.\n'
          'Thank you.',
          textAlign: TextAlign.center,
          style: MyStyle.tx13B.copyWith(
            fontFamily: 'NotoSansKR-Regular',
            color: MyColor.black.withOpacity(0.5),
          ),
        ),
        contentPadding: const EdgeInsets.only(top: 8, bottom: 0),
        actionsPadding: const EdgeInsets.symmetric(vertical: 10),
        actions: [
          const Divider(
            thickness: 1,
          ),
          Center(
            child: InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return reqEssentialDialog();
                    });
              },
              child: SizedBox(
                height: 36,
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
          ),
        ],
      ),
    );
  }

  Widget reqEssentialDialog() {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      title: Text(
        'Request to enter essential information.',
        textAlign: TextAlign.center,
        style: MyStyle.tx17B.copyWith(),
      ),
      content: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'In order to host the show, '
                  'the \n minimum information is...\n'
                  'Please input it.\n',
              style: MyStyle.tx13B.copyWith(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            const WidgetSpan(
              child: SizedBox(
                height: 10,
              ),
            ),
            TextSpan(
              text: '\n Required: Name of the show, \n scheduled '
                  ' date of the show,  and \n whether to proceed '
                  ' with the quiz. \n'
                  'Choice: Live preview video and image,\n'
                  'Choose a product to sell.',
              style: MyStyle.tx13B.copyWith(
                  fontFamily: 'Montserrat-Medium',
                  fontWeight: FontWeight.w500,
                  color: MyColor.lred,
                  height: 1.2),
            ),
          ],
        ),
      ),
      contentPadding: const EdgeInsets.only(
        top: 8,
        bottom: 2,
      ),
      actionsPadding: const EdgeInsets.symmetric(vertical: 10),
      actions: [
        const Divider(
          thickness: 1,
          indent: 0,
          endIndent: 0,
        ),
        InkWell(
          // onTap: () {
          //   Navigator.pushNamed(
          //     context,
          //     showIdRoute,
          //   );
          // },
          child: SizedBox(
            height: 36,
            child: Center(
              child: Text(
                'Confirm',
                style: MyStyle.tx17B.copyWith(
                  fontFamily: 'NotoSansKR-Medium',
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
