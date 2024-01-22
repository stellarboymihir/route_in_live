import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:route_in_live/values/MyColor.dart';
import 'package:route_in_live/values/MyStyle.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

final _editKey = GlobalKey<FormState>();
TextEditingController editController = TextEditingController();
TextEditingController introController = TextEditingController();

class _EditProfileState extends State<EditProfile> {
  var golfclick = false;
  var tennisclick = false;
  var beautyclick = false;
  @override
  Widget build(BuildContext context) {
    var maxLength = 10;
    var introMaxLength = 150;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile modification',
          style: MyStyle.tx14B.copyWith(
            fontSize: 14,
            fontFamily: 'NotoSansKR-Regular',
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(0.0),
          child: Divider(
            thickness: 1,
            color: MyColor.black.withOpacity(0.1),
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding:
                EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0, right: 16.0),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const SizedBox(
                child: Text('Save', style: MyStyle.tx14O),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _editKey,
          child: Column(
            children: [
              SizedBox(
                // height: MediaQuery.of(context).size.height * 0.05,
                height: 40,
              ),

              // For Image
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      // gradient: MyColor.circleOrange,
                      border: Border.all(width: 3, color: MyColor.orange),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/img27.png',
                        width: 152,
                        height: 152,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 105,
                    left: 120,
                    right: 5,
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: MyColor.yellowamber,
                      ),
                      height: 40,
                      width: 40,
                      child: Image.asset(
                        'assets/icons/pencil.png',
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    left: 150,
                    right: 10,
                    child: InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return deleteDialog();
                            });
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

              // Nickname
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('Nickname',
                        textAlign: TextAlign.start, style: MyStyle.tx16O),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextFormField(
                  buildCounter: (context,
                          {required currentLength,
                          required isFocused,
                          maxLength}) =>
                      const SizedBox(),
                  inputFormatters: [LengthLimitingTextInputFormatter(10)],
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
                    suffix: Text(
                      '${editController.text.length} letters/$maxLength letters',
                      style: MyStyle.tx12B.copyWith(
                        fontWeight: FontWeight.w300,
                        color: MyColor.black.withOpacity(0.5),
                      ),
                      maxLines: 10,
                    ),
                    hintText: 'Name',
                    hintStyle: TextStyle(
                      color: MyColor.orange.withOpacity(0.3),
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  style: const TextStyle(
                    color: MyColor.orange,
                  ),
                  controller: editController,
                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              ),

              // Introduction
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('Introduction',
                        textAlign: TextAlign.start, style: MyStyle.tx16O),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextFormField(
                  buildCounter: (context,
                          {required currentLength,
                          required isFocused,
                          maxLength}) =>
                      const SizedBox(),
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(150),
                    FilteringTextInputFormatter.allow(
                        RegExp(r"[a-zA-Z0-9]+|\s")),
                  ],
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  maxLength: 150,
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
                    suffix: Text(
                      '${introController.text.length} letters/$introMaxLength letters',
                      textAlign: TextAlign.end,
                      maxLines: 5,
                      style: MyStyle.tx12B.copyWith(
                        fontWeight: FontWeight.w300,
                        color: MyColor.black.withOpacity(0.5),
                        letterSpacing: 0.33,
                        fontFamily: 'NotoSansKR-Regular',
                      ),
                    ),
                    hintText: 'Enter the introduction of My Feed.',
                    hintStyle: TextStyle(
                      color: MyColor.orange.withOpacity(0.3),
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  style: const TextStyle(
                    color: MyColor.orange,
                  ),
                  controller: introController,
                  minLines: 1,
                  maxLines: 3,
                  keyboardType: TextInputType.multiline,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text:
                                    'Please register the category of interest ',
                                style: MyStyle.tx16O.copyWith(
                                  fontSize: 14,
                                )),
                            TextSpan(
                              text: '(Max 3)',
                              style: MyStyle.tx12O.copyWith(
                                fontWeight: FontWeight.w400,
                                fontFamily: 'NotoSansKR-Medium',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //  Golf
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            golfclick = !golfclick;
                          });
                        },
                        child: SizedBox(
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/icons/hash.png',
                                color: golfclick
                                    ? MyColor.orange
                                    : MyColor.orange.withOpacity(0.3),
                                height: 24,
                                width: 24,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Golf',
                                style: MyStyle.tx14O.copyWith(
                                    color: golfclick
                                        ? MyColor.orange
                                        : MyColor.orange.withOpacity(0.3)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Text(
                      '2 characters / 5 characters',
                      style: MyStyle.tx12B.copyWith(
                          fontFamily: 'NotoSansKR-Regular',
                          fontWeight: FontWeight.w300,
                          color: MyColor.black.withOpacity(0.5),
                          letterSpacing: 0.33),
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: MyColor.black.withOpacity(0.1),
              ),

              // Tennis
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            tennisclick = !tennisclick;
                          });
                        },
                        child: SizedBox(
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/icons/hash.png',
                                color: tennisclick
                                    ? MyColor.orange
                                    : MyColor.orange.withOpacity(0.3),
                                height: 24,
                                width: 24,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Tennis',
                                style: MyStyle.tx14O.copyWith(
                                    color: tennisclick
                                        ? MyColor.orange
                                        : MyColor.orange.withOpacity(0.3)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Text(
                      '3 characters / 5 characters',
                      style: MyStyle.tx12B.copyWith(
                          fontFamily: 'NotoSansKR-Regular',
                          fontWeight: FontWeight.w300,
                          color: MyColor.black.withOpacity(0.5),
                          letterSpacing: 0.33),
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: MyColor.black.withOpacity(0.1),
              ),

              //Beauty
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            beautyclick = !beautyclick;
                          });
                        },
                        child: SizedBox(
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/icons/hash.png',
                                color: beautyclick
                                    ? MyColor.orange
                                    : MyColor.orange.withOpacity(0.3),
                                height: 24,
                                width: 24,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Beauty',
                                style: MyStyle.tx14O.copyWith(
                                    color: beautyclick
                                        ? MyColor.orange
                                        : MyColor.orange.withOpacity(0.3)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Text(
                      '2 characters / 5 characters',
                      style: MyStyle.tx12B.copyWith(
                          fontFamily: 'NotoSansKR-Regular',
                          fontWeight: FontWeight.w300,
                          color: MyColor.black.withOpacity(0.5),
                          letterSpacing: 0.33),
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: MyColor.black.withOpacity(0.1),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget deleteDialog() {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      titlePadding: const EdgeInsets.only(top: 20),
      title: Text(
        'Profile Image \n'
        'Do you want to delete?',
        style: MyStyle.tx17B.copyWith(
          fontSize: 16,
          letterSpacing: 0.41,
        ),
        textAlign: TextAlign.center,
      ),
      // contentPadding: const EdgeInsets.only(top: 5, bottom: 20),
      actionsPadding:
          const EdgeInsets.only(top: 10, left: 0, right: 0, bottom: 0),
      actions: [
        const Divider(
          height: 0,
          thickness: 0,
          indent: 0,
          endIndent: 0,
          color: Colors.grey,
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: SizedBox(
                  // height: 30,
                  child: Text(
                    'Cancel',
                    style: MyStyle.tx17N.copyWith(
                      fontSize: 15,
                      fontFamily: 'NotoSansKR-Regular',
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 44,
              child: VerticalDivider(
                width: 0,
                thickness: 0,
                indent: 0,
                endIndent: 0,
                color: Colors.grey,
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: SizedBox(
                  // height: 30,
                  child: Text(
                    'Confirm',
                    style: MyStyle.tx17P.copyWith(
                      fontSize: 15,
                      fontFamily: 'NotoSansKR-Regular',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
