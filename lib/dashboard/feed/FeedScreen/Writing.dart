import 'package:flutter/material.dart';
import 'package:route_in_live/constants/routes.dart';
import 'package:route_in_live/values/MyStyle.dart';

import '../../../values/MyColor.dart';

class Writing extends StatefulWidget {
  const Writing({super.key});

  @override
  State<Writing> createState() => _WritingState();
}

class _WritingState extends State<Writing> {
  TextEditingController enterPost = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Writing',
          style: MyStyle.tx14B.copyWith(
            fontSize: 14,
            fontFamily: 'NotoSansKR-Regular',
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
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                // Navigator.pop(context);
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return postDialog();
                    });
              },
              child: const SizedBox(
                child: Text('Save', style: MyStyle.tx14O),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Text(
              'Uploading an image',
              textAlign: TextAlign.start,
              style: MyStyle.tx16O,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Text(
              'Please upload an image or video on the feed.',
              style: MyStyle.tx12B.copyWith(
                fontFamily: 'NotoSansKR-Regular',
                letterSpacing: 0.33,
              ),
            ),
          ),
          Container(
            height: 72,
            margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            width: MediaQuery.of(context).size.width,
            color: MyColor.orange,
            child: Center(
              child: Image.asset(
                'assets/icons/camera.png',
                height: 36,
                width: 36,
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: TextFormField(
              buildCounter: (context,
                      {required currentLength,
                      required isFocused,
                      maxLength}) =>
                  const SizedBox(),
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
                hintText: 'Please enter the post.',
                hintStyle: TextStyle(
                  color: MyColor.orange.withOpacity(0.3),
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              style: const TextStyle(
                color: MyColor.orange,
              ),
              controller: enterPost,
              minLines: 1,
              maxLines: 3,
              keyboardType: TextInputType.multiline,
              onChanged: (value) {
                setState(() {});
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
            child: Text(
              'Choose a product to sell',
              textAlign: TextAlign.start,
              style: MyStyle.tx16O,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Text(
              'Please upload an image or video on the feed.',
              style: MyStyle.tx12B.copyWith(
                fontFamily: 'NotoSansKR-Regular',
                letterSpacing: 0.33,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, searchProductRoute);
            },
            child: Container(
              margin: EdgeInsets.all(8.0),
              height: 40,
              width: MediaQuery.of(context).size.width,
              color: MyColor.yellowamber,
              child: Center(
                child: Text(
                  'Search',
                  style: MyStyle.tx14W,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget postDialog() {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      titlePadding: const EdgeInsets.only(top: 20),
      title: Text(
        'Upload your post',
        style: MyStyle.tx17B.copyWith(
          fontSize: 16,
          letterSpacing: 0.41,
        ),
        textAlign: TextAlign.center,
      ),
      // contentPadding:
      //     const EdgeInsets.only(top: 5, bottom: 10, right: 5, left: 5),
      actionsPadding:
          const EdgeInsets.only(top: 10, left: 0, right: 0, bottom: 0),
      actions: [
        const Center(
          child: Text(
              'Posts are shared in the feed.\n'
              'Do you want to continue?',
              style: MyStyle.tx13B),
        ),
        SizedBox(
          height: 10,
        ),
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
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return uploadDialog();
                      });
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

  Widget uploadDialog() {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      titlePadding: const EdgeInsets.only(top: 20),
      title: Text(
        'Image upload request',
        style: MyStyle.tx17B.copyWith(
          fontSize: 16,
          letterSpacing: 0.41,
        ),
        textAlign: TextAlign.center,
      ),
      // contentPadding:
      //     const EdgeInsets.only(top: 5, bottom: 10, right: 5, left: 5),
      actionsPadding:
          const EdgeInsets.only(top: 10, left: 0, right: 0, bottom: 0),
      actions: [
        Center(
          child: Text(
            'No image selected. \n'
            'Please upload an image.',
            textAlign: TextAlign.center,
            style:
                MyStyle.tx13B.copyWith(color: MyColor.black.withOpacity(0.5)),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        const Divider(
          height: 0,
          thickness: 0,
          indent: 0,
          endIndent: 0,
          color: Colors.grey,
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
            Navigator.pop(context);
            // showDialog(
            //     context: context,
            //     builder: (BuildContext context) {
            //       return uploadDialog();
            //     });
          },
          child: SizedBox(
            // height: 30,
            child: Center(
              child: Text(
                'Confirm',
                style: MyStyle.tx17B.copyWith(
                  fontSize: 15,
                  fontFamily: 'NotoSansKR-Regular',
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
