import 'package:flutter/material.dart';

import '../../../values/MyColor.dart';
import '../../../values/MyStyle.dart';

class SearchProduct extends StatefulWidget {
  const SearchProduct({super.key});

  @override
  State<SearchProduct> createState() => _SearchProductState();
}

class _SearchProductState extends State<SearchProduct> {
  TextEditingController searchingBar = TextEditingController();
  // bool isClicked = false;

  final List<Map<String, dynamic>> gridList = [
    {
      "image": 'assets/images/img1.png',
      "title": 'Sports shoes with...',
      "subtitle": '39,000 won',
      'isClicked': false,
    },
    {
      "image": 'assets/images/img2.png',
      "title": 'Golf club',
      "subtitle": '310,000 won',
      'isClicked': false,
    },
    {
      "image": 'assets/images/img3.png',
      "title": 'Golf ball Set',
      "subtitle": '39,000 won',
      'isClicked': false,
    },
    {
      "image": 'assets/images/img4.png',
      "title": 'A white cap',
      "subtitle": '60,000 won',
      'isClicked': false,
    },
    {
      "image": 'assets/images/img5.png',
      "title": 'Sports shoes with...',
      "subtitle": '39,000 won',
      'isClicked': false,
    },
    {
      "image": 'assets/images/img6.png',
      "title": 'Sports shoes with...',
      "subtitle": '39,000 won',
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
                    controller: searchingBar,
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
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4.0,
                    childAspectRatio: 0.9,
                    mainAxisSpacing: 4.0),
                itemCount: 6,
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                    padding: const EdgeInsets.only(top: 12.0),
                    // height: 232,

                    color: MyColor.black.withOpacity(0.05),
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.asset(
                            '${gridList[index]["image"]}',
                            height: 172,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${gridList[index]["title"]}',
                                  style: MyStyle.tx14W.copyWith(
                                      color: MyColor.black,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 0.33,
                                      fontSize: 12),
                                ),
                                Text('${gridList[index]["subtitle"]}'),
                              ],
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            // Plus Button
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                                setState(() {
                                  gridList[index]["isClicked"] =
                                      !gridList[index]["isClicked"];
                                });
                              },
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    'assets/icons/checkMark.png',
                                    height: 24,
                                    width: 24,
                                    color: gridList[index]["isClicked"]
                                        ? MyColor.yellowamber
                                        : MyColor.grey,
                                  ),
                                ),
                              ),
                            ),
                          ],
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
      bottomNavigationBar: Container(
        height: 40,
        color: MyColor.yellowamber,
        child: Center(
          child: Text(
            'Registration of 2 product promotions',
            style: MyStyle.tx14W.copyWith(
              fontFamily: 'NotoSansKR-Regular',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
