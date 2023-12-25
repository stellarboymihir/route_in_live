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
  TextEditingController AttachController = TextEditingController();

  int _char = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Application for live broadcast reservation',
          style: MyStyle.tx14W.copyWith(
            color: MyColor.black,
            fontSize: 13,
          ),
        ),
        elevation: 1,
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
                    fontSize: 8,
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
                    Expanded(
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
                      width: 20,
                    ),
                    Expanded(
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
                          hintText: '00:00',
                          suffixIcon: Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: MyColor.orangeO,
                          ),
                          hintStyle:
                              MyStyle.tx14O.copyWith(color: MyColor.orangeO),
                        ),
                        controller: broadcastTimeController,
                        keyboardType: TextInputType.datetime,
                        onChanged: (value) {
                          setState(() {});
                        },
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
                  height: 8,
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
                    suffixIcon: Image.asset('assets/icons/Attach.png'),
                    hintStyle: MyStyle.tx14O.copyWith(color: MyColor.orangeO),
                  ),
                  controller: AttachController,
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
                const Text(
                  'Search for the product you want to sell and register it.',
                  style: MyStyle.tx12B,
                ),
                const SizedBox(
                  height: 8,
                ),

                // *** Buttons ***
                Container(
                  height: 40,
                  decoration: const BoxDecoration(
                    color: MyColor.dorange,
                  ),
                  child: const Center(
                    child: Text(
                      'Select products to sell',
                      style: MyStyle.tx14W,
                    ),
                  ),
                ),
                const Divider(
                  thickness: 0,
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
}
