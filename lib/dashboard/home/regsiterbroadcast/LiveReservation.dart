import 'package:flutter/material.dart';
import 'package:route_in_live/values/MyStyle.dart';

import '../../../values/MyColor.dart';

class LiveReservation extends StatefulWidget {
  const LiveReservation({super.key});

  @override
  State<LiveReservation> createState() => _LiveReservationState();
}

class _LiveReservationState extends State<LiveReservation> {
  final _liveRegisterKey = GlobalKey<FormState>();
  TextEditingController broadcastNameController = TextEditingController();
  TextEditingController broadcastDateController = TextEditingController();
  TextEditingController broadcastTimeController = TextEditingController();
  TextEditingController attachController = TextEditingController();

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
        title: Row(
          children: [
            Image.asset('assets/icons/back.png'),
            const SizedBox(
              width: 20,
            ),
            Text(
              'Application for live broadcast reservation',
              style: MyStyle.tx14W.copyWith(
                color: MyColor.black,
                fontFamily: 'NotoSansKR-Regular',
                fontSize: 13,
              ),
            ),
          ],
        ),

        automaticallyImplyLeading: false,

        // titleSpacing: 6,
        shape: UnderlineInputBorder(
          borderSide: BorderSide(
            color: MyColor.black.withOpacity(0.1),
          ),
        ),
        // elevation: 0,
        centerTitle: true,
      ),
      body: Form(
        key: _liveRegisterKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // *** Broadcast Name ***
                Text(
                  'Broadcast Name',
                  style: MyStyle.tx16O
                      .copyWith(fontFamily: 'NotoSansKR-Regular', fontSize: 15),
                ),
                Text(
                  'The broadcast name is the content that is shown'
                  ' to users at the time of notice.',
                  style: MyStyle.tx10.copyWith(
                    fontSize: 10,
                    fontFamily: 'NotoSansKR-Regular',
                    decoration: TextDecoration.none,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
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
                const SizedBox(
                  height: 10,
                ),

                //  *** Scheduled broadcast date ***
                Text(
                  'Scheduled broadcast date',
                  style: MyStyle.tx16O
                      .copyWith(fontFamily: 'NotoSansKR-Regular', fontSize: 15),
                ),
                Text(
                  'The broadcast will run for one hour from the selected time.',
                  style: MyStyle.tx10.copyWith(
                    fontSize: 10,
                    fontFamily: 'NotoSansKR-Medium',
                    decoration: TextDecoration.none,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 40,
                      width: 140,
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
                    const SizedBox(
                      width: 5,
                    ),
                    SizedBox(
                      height: 40,
                      width: 198,
                      child: DropdownButtonFormField<String>(
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
                            ),
                          ),
                          hintText: '00:00',
                          hintStyle:
                              MyStyle.tx14O.copyWith(color: MyColor.orangeO),
                        ),
                        value: _downVal,
                        elevation: 0,
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
                                style: const TextStyle(color: MyColor.orange),
                              ));
                        }).toList(),
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
                        fontFamily: 'NotoSansKR-Regular', fontSize: 15),
                  ),
                ),
                Text(
                  'Questions are asked through separate '
                  'consultation with OneQ Co., Ltd.',
                  style: MyStyle.tx10.copyWith(
                    fontSize: 8,
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
                            fontSize: 12,
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
                            fontSize: 12,
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

                //   *** Live Preview Videos and Iamges
                Text(
                  'Live preview video and images',
                  style: MyStyle.tx16O
                      .copyWith(fontFamily: 'NotoSansKR-Regular', fontSize: 15),
                ),
                Text(
                  'Please upload an image used as a preview video or thumbnail.',
                  style: MyStyle.tx12B.copyWith(
                    fontSize: 10,
                    fontFamily: 'NotoSansKR-Medium',
                    decoration: TextDecoration.none,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextFormField(
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
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Attachments can be registered up to 1 photo (10mb or less)\n'
                  'and 1 video (350mb or less)',
                  style: MyStyle.tx12B.copyWith(
                    color: MyColor.black.withOpacity(0.7),
                    fontSize: 11,
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
                Text(
                  'Search for the product you want to sell and register it.',
                  style: MyStyle.tx12B.copyWith(fontSize: 11),
                ),
                const SizedBox(
                  height: 12,
                ),

                // *** Buttons ***
                Container(
                  height: 40,
                  decoration: const BoxDecoration(
                    color: MyColor.dorange,
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
                Divider(
                  thickness: 0.5,
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
                Container(
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

  Widget liveBroadcastDialog() {
    return AlertDialog(
      content: Column(
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
          Container(
            height: 40,
            width: 330,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1),
              border: Border.all(
                color: MyColor.orange,
                width: 1,
              ),
            ),
            child: const Center(
              child: Text(
                'Uploading an image',
                style: MyStyle.tx14O,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
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
              fontSize: 11,
              color: MyColor.black.withOpacity(0.7),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 40,
            width: 330,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1),
              border: Border.all(
                color: MyColor.orange,
                width: 1,
              ),
            ),
            child: const Center(
              child: Text(
                'Upload the preview video',
                style: MyStyle.tx14O,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          //   *** Text ***
          Center(
            child: Text(
              'Images and preview videos are optional. \n'
              'Up to one image and one preview can be uploaded.',
              textAlign: TextAlign.center,
              style: MyStyle.tx12O.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 11,
              ),
            ),
          ),
          RichText(
            text: const TextSpan(
                text: 'Images and preview videos are optional. \n'
                    'Up to one image and one preview can be uploaded.'),
          ),
        ],
      ),
    );
  }
}
