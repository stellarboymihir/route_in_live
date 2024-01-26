import 'package:flutter/material.dart';
import 'package:route_in_live/values/MyColor.dart';
import 'package:route_in_live/values/MyStyle.dart';

class NoticeService extends StatefulWidget {
  const NoticeService({super.key});

  @override
  State<NoticeService> createState() => _NoticeServiceState();
}

class _NoticeServiceState extends State<NoticeService> {
  bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: MyColor.white,
        title: Text(
          'Notice',
          style: MyStyle.tx14B.copyWith(
            fontSize: 14,
            // fontFamily: 'NotoSansKR-Regular',
          ),
        ),
        centerTitle: true,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: Divider(
            thickness: 1,
          ),
        ),
      ),
      body: Column(
        children: [
          ExpansionTile(
            backgroundColor: MyColor.white,
            shape: Border(),
            collapsedShape: Border(),
            title: const Text(
              'Announcement related to Lunar New Year\'s Day event.',
              style: MyStyle.tx13B,
            ),
            trailing: Icon(
              _customTileExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
              size: 24,
            ),
            onExpansionChanged: (bool expanded) {
              setState(() {
                _customTileExpanded = expanded;
              });
            },
            subtitle: const Text(
              '2021.01.25',
              style: MyStyle.tx9B,
            ),
            children: <Widget>[
              ListTile(
                  title: Text(
                'Announcement on New Year\'s Day Event'
                ' Announcement on New Year\'s Day Event Announcement on '
                'New Year\'s Day Event Announcement on New Year\'s Day '
                'Event Day Event Announcement on New Year\'s Day Event',
                style: MyStyle.tx14B.copyWith(
                  fontSize: 14,
                ),
              )),
            ],
          ),
          const Divider(
            thickness: 0,
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
            height: 54,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Notice',
                      style: MyStyle.tx14B.copyWith(
                        fontSize: 14,
                        fontFamily: 'NotoSansKR-Regular',
                      ),
                    ),
                    Text(
                      '2021.01.20',
                      style: MyStyle.tx9B,
                    ),
                  ],
                ),
                Image.asset(
                  'assets/icons/downArrow.png',
                  height: 24,
                  width: 24,
                )
              ],
            ),
          ),
          const Divider(
            thickness: 0,
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
            height: 54,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Notice',
                      style: MyStyle.tx14B.copyWith(
                        fontSize: 14,
                        fontFamily: 'NotoSansKR-Regular',
                      ),
                    ),
                    Text(
                      '2021.01.20',
                      style: MyStyle.tx9B,
                    ),
                  ],
                ),
                Image.asset(
                  'assets/icons/downArrow.png',
                  height: 24,
                  width: 24,
                )
              ],
            ),
          ),
          const Divider(
            thickness: 0,
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
            height: 54,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Notice',
                      style: MyStyle.tx14B.copyWith(
                        fontSize: 14,
                        fontFamily: 'NotoSansKR-Regular',
                      ),
                    ),
                    Text(
                      '2021.01.20',
                      style: MyStyle.tx9B,
                    ),
                  ],
                ),
                Image.asset(
                  'assets/icons/downArrow.png',
                  height: 24,
                  width: 24,
                )
              ],
            ),
          ),
          const Divider(
            thickness: 0,
          ),
        ],
      ),
    );
  }
}
