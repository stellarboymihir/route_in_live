import 'package:flutter/material.dart';

import '../../../values/MyColor.dart';
import '../../../values/MyStyle.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searchingList = TextEditingController();
  // bool isClicked = false;

  final List<Map<String, dynamic>> fullGridList = [
    {
      "image": 'assets/images/img32.png',
      "title": 'whosthat',
      "subtitle": '50,000',
      'isClicked': false,
    },
    {
      "image": 'assets/images/img33.png',
      "title": 'Coco',
      "subtitle": '3,000',
      'isClicked': false,
    },
    {
      "image": 'assets/images/img34.png',
      "title": 'Chicken',
      "subtitle": '333',
      'isClicked': false,
    },
    {
      "image": 'assets/images/img35.png',
      "title": 'Gubujeong',
      "subtitle": '70',
      'isClicked': false,
    },
    {
      "image": 'assets/images/img36.png',
      "title": 'Iwantoilet',
      "subtitle": '15',
      'isClicked': false,
    },
    {
      "image": 'assets/images/img37.png',
      "title": 'Love',
      "subtitle": '46,789',
      'isClicked': false,
    },
    {
      "image": 'assets/images/img38.png',
      "title": 'Lisk',
      "subtitle": '53,532',
      'isClicked': false,
    },
    {
      "image": 'assets/images/img39.png',
      "title": 'Fat',
      "subtitle": '100,000',
      'isClicked': false,
    },
    {
      "image": 'assets/images/img40.png',
      "title": 'Grainbread',
      "subtitle": '90',
      'isClicked': false,
    },
    {
      "image": 'assets/images/img41.png',
      "title": 'Skiski',
      "subtitle": '780',
      'isClicked': false,
    },
    {
      "image": 'assets/images/img42.png',
      "title": 'HealthyLife',
      "subtitle": '80',
      'isClicked': false,
    },
    {
      "image": 'assets/images/img43.png',
      "title": 'Winelover',
      "subtitle": '3',
      'isClicked': false,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Select products to sell',
          textAlign: TextAlign.center,
          style: MyStyle.tx14W.copyWith(
            color: MyColor.black,
            fontFamily: 'NotoSansKR-Regular',
          ),
        ),
        centerTitle: true,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0.0),
          child: Divider(
            thickness: 1,
            color: MyColor.black.withOpacity(0.1),
          ),
        ),
      ),
      body: Column(
        children: [
          // *** Search Bar ***
          Container(
            margin: const EdgeInsets.all(12.0),
            height: 32,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: MyColor.black.withOpacity(0.05),
              borderRadius: BorderRadius.circular(26),
            ),
            child: Row(
              children: [
                Expanded(
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
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.all(8.0),
                      hintText: 'Please enter the post.',
                      hintStyle: TextStyle(
                        color: MyColor.black.withOpacity(0.7),
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    style: const TextStyle(
                      color: MyColor.black,
                    ),
                    controller: searchingList,
                    keyboardType: TextInputType.text,
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                ),
                InkWell(
                  // onTap: () {
                  //   Navigator.pop(context);
                  // },
                  child: Image.asset(
                    'assets/icons/close.png',
                    width: 16,
                    height: 16,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  height: 32,
                  decoration: BoxDecoration(
                      color: MyColor.orange,
                      borderRadius: BorderRadius.circular(33)),
                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(
                        child: Text(
                          'search ',
                          style: MyStyle.tx14W.copyWith(
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Image.asset(
                        'assets/icons/search.png',
                        fit: BoxFit.fill,
                        height: 12,
                        width: 12,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0, bottom: 10.0),
                child: Text(
                  'Full List',
                  style: MyStyle.tx16B,
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              height: MediaQuery.of(context).size.height,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 4.0,
                    childAspectRatio: 0.9,
                    mainAxisSpacing: 4.0),
                itemCount: 12,
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                    padding: const EdgeInsets.only(top: 12.0),
                    // height: 232,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: MyColor.black.withOpacity(0.05),
                    ),

                    child: Column(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            '${fullGridList[index]["image"]}',
                            fit: BoxFit.cover,
                            height: 64,
                            width: 64,
                          ),
                        ),
                        Text('${fullGridList[index]["title"]}',
                            style: MyStyle.tx12B),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/icons/foll.png',
                                alignment: Alignment.bottomLeft,
                                height: 16,
                                width: 16,
                              ),
                              Spacer(),
                              Text(
                                '${fullGridList[index]["subtitle"]}',
                                textAlign: TextAlign.center,
                                style: MyStyle.tx12P,
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
