import 'package:flutter/material.dart';

import '../../../values/MyColor.dart';
import '../../../values/MyStyle.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  var tabMenuChange = 'All';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: MyColor.grey,
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      tabMenuChange = 'All';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: MyColor.orange,
                    ),
                    height: 28,
                    width: 82,
                    child: const Center(
                      child: Text(
                        'All',
                        style: MyStyle.tx12W,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      tabMenuChange = 'Following';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: MyColor.black.withOpacity(0.05),
                    ),
                    height: 28,
                    width: 82,
                    child: Center(
                      child: Text(
                        'Following',
                        style: tabMenuChange
                            ? MyStyle.tx12W
                            : MyStyle.tx12B.copyWith(
                                color: MyColor.black.withOpacity(0.5),
                              ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      tabMenuChange = 'Like';
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: MyColor.black.withOpacity(0.05),
                    ),
                    height: 28,
                    width: 82,
                    child: Center(
                      child: Text(
                        'Like',
                        style: MyStyle.tx12B.copyWith(
                          color: MyColor.black.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
