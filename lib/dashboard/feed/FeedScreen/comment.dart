import 'package:flutter/material.dart';
import 'package:route_in_live/constants/routes.dart';

import '../../../values/MyColor.dart';
import '../../../values/MyStyle.dart';

class Comment extends StatefulWidget {
  const Comment({super.key});

  @override
  State<Comment> createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Comment',
          style: MyStyle.tx14B.copyWith(
            fontSize: 14,
          ),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: Divider(
            thickness: 0,
            height: 0,
            color: MyColor.black.withOpacity(0.1),
          ),
        ),
      ),
      body: Column(
        children: [
          //  1st Row
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/img7.png',
                  height: 32,
                  width: 32,
                  fit: BoxFit.fill,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, right: 8.0),
                    child: Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Running',
                                style: MyStyle.tx12B.copyWith(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const WidgetSpan(
                                  child: SizedBox(
                                width: 5,
                              )),
                              TextSpan(
                                text: '2 weeks ago',
                                style: MyStyle.tx10.copyWith(
                                  fontFamily: 'NotoSansKR-Regular',
                                  color: MyColor.black.withOpacity(0.5),
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    'Running gear market is open tomorrow! \n'
                    ' All items are prepared at a special price,'
                    ' so if \n you miss it, you will regret it! '
                    ' Live next week \n ⭐️Tuesday⭐️.'
                    'Please look forward to the \n Lunar New Year event 💕',
                    style: MyStyle.tx12B,
                  ),
                ],
              ),
            ],
          ),
          Divider(
            thickness: 0,
            color: MyColor.black.withOpacity(0.1),
          ),
          const SizedBox(
            height: 2,
          ),
          // 2nd Row
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/mg26.png',
                  height: 32,
                  width: 32,
                  fit: BoxFit.fill,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, right: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Chicken',
                                  style: MyStyle.tx12B.copyWith(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const WidgetSpan(
                                    child: SizedBox(
                                  width: 5,
                                )),
                                TextSpan(
                                  text: '2 weeks ago',
                                  style: MyStyle.tx10.copyWith(
                                    fontFamily: 'NotoSansKR-Regular',
                                    color: MyColor.black.withOpacity(0.5),
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              deleteSheet();
                              // reportSheet();
                            },
                            child: Image.asset(
                              'assets/icons/more.png',
                              height: 20,
                              width: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      'Oh yeah!!!\n'
                      ' hahahahahahahahahahahahahahahahahahahaha',
                      style: MyStyle.tx12B,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(
            thickness: 0,
            color: MyColor.black.withOpacity(0.1),
          ),

          // 3rd Row
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/mg27.png',
                  height: 32,
                  width: 32,
                  fit: BoxFit.fill,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, right: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'HealthyLife',
                                  style: MyStyle.tx12B.copyWith(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const WidgetSpan(
                                    child: SizedBox(
                                  width: 5,
                                )),
                                TextSpan(
                                  text: '2 weeks ago',
                                  style: MyStyle.tx10.copyWith(
                                    fontFamily: 'NotoSansKR-Regular',
                                    color: MyColor.black.withOpacity(0.5),
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              deleteSheet();
                              // reportSheet();
                            },
                            child: Image.asset(
                              'assets/icons/more.png',
                              height: 20,
                              width: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      'I\'m also looking forward to...',
                      style: MyStyle.tx12B,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(
            thickness: 0,
            color: MyColor.black.withOpacity(0.1),
          ),

          // 4th Row
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/mg28.png',
                  height: 32,
                  width: 32,
                  fit: BoxFit.fill,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, right: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Good_Night',
                                  style: MyStyle.tx12B.copyWith(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const WidgetSpan(
                                    child: SizedBox(
                                  width: 5,
                                )),
                                TextSpan(
                                  text: '2 weeks ago',
                                  style: MyStyle.tx10.copyWith(
                                    fontFamily: 'NotoSansKR-Regular',
                                    color: MyColor.black.withOpacity(0.5),
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              reportSheet();
                            },
                            child: Image.asset(
                              'assets/icons/more.png',
                              height: 20,
                              width: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      'Runner, I was waiting for you!',
                      style: MyStyle.tx12B,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(
            thickness: 0,
            color: MyColor.black.withOpacity(0.1),
          ),

          //   5th Row
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/images/mg29.png",
                  height: 32,
                  width: 32,
                  fit: BoxFit.fill,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, right: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Morning Man',
                                  style: MyStyle.tx12B.copyWith(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const WidgetSpan(
                                    child: SizedBox(
                                  width: 5,
                                )),
                                TextSpan(
                                  text: '2 weeks ago',
                                  style: MyStyle.tx10.copyWith(
                                    fontFamily: 'NotoSansKR-Regular',
                                    color: MyColor.black.withOpacity(0.5),
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              reportSheet();
                            },
                            child: Image.asset(
                              'assets/icons/more.png',
                              height: 20,
                              width: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      child: Text(
                        'Wow, I\'ll be waiting, too! The products \n'
                        'I received last time were really good, too!',
                        style: MyStyle.tx12B,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: Divider(
              thickness: 0,
              color: MyColor.black.withOpacity(0.1),
            ),
          ),

          //  Enter the comments Container
          Container(
            margin: const EdgeInsets.all(12.0),
            padding: EdgeInsets.symmetric(
              horizontal: 2.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: MyColor.black.withOpacity(0.05),
            ),
            height: 32,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Enter the comments.',
                      style: MyStyle.tx12B.copyWith(
                        fontFamily: 'NotoSansKR-Regular',
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    correctionSheet();
                  },
                  child: Container(
                    alignment: Alignment.topRight,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: MyColor.orange,
                    ),
                    height: 32,
                    width: 51,
                    child: Center(
                      child: Text(
                        'Post',
                        style: MyStyle.tx11W.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void reportSheet() {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                height: 48,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          reasonReportSheet();
                        },
                        child: SizedBox(
                          height: 26,
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                            child: Text(
                              'Report it',
                              style: MyStyle.tx16B.copyWith(
                                fontFamily: 'NotoSansKR-Medium',
                                color: MyColor.lred,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 48,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      'Cancel',
                      style: MyStyle.tx17B.copyWith(
                        fontFamily: 'NotoSansKR-Regular',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        );
      },
    );
  }

  void reasonReportSheet() {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(16),
          topLeft: Radius.circular(16),
        ),
      ),
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.33,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Expanded(
                          child: Center(
                              child: Text('Report it', style: MyStyle.tx21B))),
                      Image.asset(
                        'assets/icons/dismiss.png',
                        height: 24,
                        width: 24,
                        // color: MyColor.bl,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Text(
                    'Please select the reason for reporting.',
                    style: MyStyle.tx13B.copyWith(
                      fontFamily: 'NotoSansKR-Regular',
                      color: MyColor.black.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                color: MyColor.black.withOpacity(0.1),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return sureReportDialog();
                      });
                },
                child: SizedBox(
                  height: 48,
                  child: Center(
                    child: Text(
                      'Spam, Advertising and Promotion',
                      style: MyStyle.tx16B.copyWith(
                        color: MyColor.lred,
                      ),
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                color: MyColor.black.withOpacity(0.1),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return sureReportDialog();
                      });
                },
                child: SizedBox(
                  height: 48,
                  child: Center(
                    child: Text(
                      'Malicious Posts',
                      style: MyStyle.tx16B.copyWith(
                        color: MyColor.lred,
                      ),
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                color: MyColor.black.withOpacity(0.1),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget sureReportDialog() {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      titlePadding: const EdgeInsets.only(top: 20),
      title: Text(
        'This Comment \n'
        'Are you sure you want to\nreport it?',
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
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return reportedDialog();
                      });
                  // Navigator.pop(context);
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

  Widget reportedDialog() {
    return AlertDialog(
      title: Text(
        'A comment has been reported.',
        textAlign: TextAlign.center,
        style: MyStyle.tx17B.copyWith(fontSize: 16, letterSpacing: 0.41),
      ),
      contentPadding: const EdgeInsets.all(0),
      actionsPadding: const EdgeInsets.only(top: 0, bottom: 15),
      actions: [
        Divider(
          thickness: 1,
          color: MyColor.black.withOpacity(0.12),
        ),
        InkWell(
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, noticeRoute);
          },
          child: SizedBox(
            child: Center(
              child: Text(
                'Confirm',
                style: MyStyle.tx17B.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.41,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void deleteSheet() {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                height: 96,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return deleteCommentDialog();
                              });
                        },
                        child: SizedBox(
                          height: 30,
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                            child: Text(
                              'Delete',
                              style: MyStyle.tx16B
                                  .copyWith(fontFamily: 'NotoSansKR-Medium'),
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
                          Navigator.pop(context);
                        },
                        child: SizedBox(
                          height: 30,
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                            child: Text(
                              'Declaration',
                              style: MyStyle.tx16B.copyWith(
                                fontFamily: 'NotoSansKR-Medium',
                                color: MyColor.lred,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 48,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      'Cancel',
                      style: MyStyle.tx17B.copyWith(
                        fontFamily: 'NotoSansKR-Medium',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              // const SizedBox(
              //   height: 20,
              // ),
            ],
          ),
        );
      },
    );
  }

  Widget deleteCommentDialog() {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      titlePadding: const EdgeInsets.only(top: 20),
      title: Text(
        'Are you sure you want to \n delete your comment?',
        style: MyStyle.tx17B.copyWith(
          fontSize: 16,
          letterSpacing: 0.41,
        ),
        textAlign: TextAlign.center,
      ),
      // contentPadding: const EdgeInsets.only(top: 5, bottom: 20),
      actionsPadding:
          const EdgeInsets.only(top: 15, left: 0, right: 0, bottom: 0),
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
                      fontSize: 17,
                      fontFamily: 'NotoSansKR-Regular',
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 48,
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
                  Navigator.pop(context);
                },
                child: SizedBox(
                  // height: 30,
                  child: Text(
                    'Confirm',
                    style: MyStyle.tx17P.copyWith(
                      fontSize: 17,
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

  void correctionSheet() {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                height: 96,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SizedBox(
                          height: 30,
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                            child: Text(
                              'Correction',
                              style: MyStyle.tx16B
                                  .copyWith(fontFamily: 'NotoSansKR-Medium'),
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
                          Navigator.pop(context);
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return deleteCommentDialog();
                              });
                        },
                        child: SizedBox(
                          height: 30,
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                            child: Text(
                              'Delete',
                              style: MyStyle.tx16B.copyWith(
                                fontFamily: 'NotoSansKR-Medium',
                                color: MyColor.lred,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 48,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      'Cancel',
                      style: MyStyle.tx17B.copyWith(
                        fontFamily: 'NotoSansKR-Medium',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              // const SizedBox(
              //   height: 20,
              // ),
            ],
          ),
        );
      },
    );
  }
}
