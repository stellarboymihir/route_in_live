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

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    var maxLength = 10;
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
          preferredSize: Size.fromHeight(0.0),
          child: Divider(
            thickness: 1,
            color: MyColor.black.withOpacity(0.1),
          ),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              child: Text('Save', style: MyStyle.tx14O),
            ),
          ),
        ],
      ),
      body: Form(
        key: _editKey,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
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
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
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
                  child: Image.asset(
                    'assets/icons/Circle.png',
                    color: MyColor.orange,
                    height: 24,
                    width: 24,
                  ),
                )
              ],
            ),
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
                    SizedBox(),
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
                    '${editController.text.length} letters/$maxLength = 10 letters',
                    maxLines: 10,
                  ),
                  hintStyle: TextStyle(
                    color: MyColor.black.withOpacity(0.5),
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
          ],
        ),
      ),
    );
  }
}
