import 'package:flutter/material.dart';
import 'package:route_in_live/values/MyColor.dart';
import 'package:route_in_live/values/MyStyle.dart';

import '../../../constants/routes.dart';

class WithdrawalApplication extends StatefulWidget {
  const WithdrawalApplication({super.key});

  @override
  State<WithdrawalApplication> createState() => _WithdrawalApplicationState();
}

class _WithdrawalApplicationState extends State<WithdrawalApplication> {
  final formKey = GlobalKey<FormState>();
  TextEditingController amountController = TextEditingController();
  TextEditingController accHolderController = TextEditingController();
  TextEditingController bankNameController = TextEditingController();
  TextEditingController bankAccController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Withdrawal application',
          style: MyStyle.tx14W
              .copyWith(color: Colors.black, fontFamily: 'NotoSansKR-Regular'),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: Divider(
            thickness: 0,
            color: MyColor.black.withOpacity(0.1),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: MyColor.black.withOpacity(0.05),
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 12.0),
                  margin: const EdgeInsets.all(8.0),
                  height: 72,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'My point',
                        textAlign: TextAlign.start,
                        style: MyStyle.tx14B.copyWith(
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '31,000',
                              style: MyStyle.tx16W.copyWith(
                                fontFamily: 'NotoSansKR-Regular',
                                fontWeight: FontWeight.w700,
                                color: MyColor.purple,
                              ),
                            ),
                            TextSpan(
                              text: ' Points',
                              style: MyStyle.tx14W.copyWith(
                                color: MyColor.black.withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // Withdrawal Field
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Withdrawal amount',
                    textAlign: TextAlign.start,
                    style: MyStyle.tx16O,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
                  child: Text(
                    'The withdrawal amount starts at 30,000 points.',
                    textAlign: TextAlign.start,
                    style: MyStyle.tx12O.copyWith(
                      fontFamily: 'NotoSansKR-Regular',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
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
                      contentPadding: const EdgeInsets.all(8),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: MyColor.orange,
                        ),
                      ),
                      hintText: 'Please enter the amount to be withdrawn.',
                      hintStyle: TextStyle(
                        color: MyColor.orangeO,
                      ),
                    ),
                    style: MyStyle.tx14O,
                    controller: amountController,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                //   Account Holder
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'The account holder',
                    textAlign: TextAlign.start,
                    style: MyStyle.tx16O,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
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
                      contentPadding: const EdgeInsets.all(8),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: MyColor.orange,
                        ),
                      ),
                      hintText: 'Please enter the account holder\'s name.',
                      hintStyle: TextStyle(
                        color: MyColor.orangeO,
                      ),
                    ),
                    style: MyStyle.tx14O,
                    controller: accHolderController,
                    keyboardType: TextInputType.text,
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                //   Bank Name
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Bank Name',
                    textAlign: TextAlign.start,
                    style: MyStyle.tx16O,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
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
                      contentPadding: const EdgeInsets.all(8),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: MyColor.orange,
                        ),
                      ),
                      hintText: 'Please enter the bank name.',
                      hintStyle: TextStyle(
                        color: MyColor.orangeO,
                      ),
                    ),
                    style: MyStyle.tx14O,
                    controller: bankNameController,
                    keyboardType: TextInputType.text,
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                // Bank Account Number
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Bank account number',
                    textAlign: TextAlign.start,
                    style: MyStyle.tx16O,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
                  child: Text(
                    'Please enter your account number including \' - \'.',
                    textAlign: TextAlign.start,
                    style: MyStyle.tx12O.copyWith(
                      fontFamily: 'NotoSansKR-Regular',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
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
                      contentPadding: const EdgeInsets.all(8),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: MyColor.orange,
                        ),
                      ),
                      hintText: 'Please enter the amount to be withdrawn.',
                      hintStyle: TextStyle(
                        color: MyColor.orangeO,
                      ),
                    ),
                    style: MyStyle.tx14O,
                    controller: bankAccController,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
                  child: Text(
                    'The amount you applied for will be withdrawn only when the account number matches the depositor.',
                    textAlign: TextAlign.center,
                    style: MyStyle.tx12O.copyWith(
                      fontFamily: 'NotoSansKR-Regular',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return withdrawalDialog();
                        });
                  },
                  child: Container(
                    height: 44,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4),
                    width: MediaQuery.of(context).size.width,
                    color: MyColor.orange,
                    child: Center(
                      child: Text(
                        'Application',
                        style: MyStyle.tx14W.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget withdrawalDialog() {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      titlePadding: const EdgeInsets.only(top: 20),
      title: Text(
        'Check the withdrawal application information.',
        style: MyStyle.tx17B.copyWith(
          letterSpacing: 0.41,
        ),
        textAlign: TextAlign.center,
      ),
      // contentPadding:
      //     const EdgeInsets.only(top: 5, bottom: 10, right: 5, left: 5),
      actionsPadding:
          const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 0),
      actions: [
        const Center(
          child: Text(
            'Shinhan Bank 41123-512-5436123-1.\n'
            'Do you want to withdraw 30,000 points?',
            textAlign: TextAlign.center,
            style: MyStyle.tx13B,
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
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return failedDialog();
                      });
                },
                child: SizedBox(
                  // height: 30,
                  child: Text(
                    'Close',
                    style: MyStyle.tx17N.copyWith(
                      // fontSize: 1,
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
                        return successDialog();
                      });
                },
                child: SizedBox(
                  // height: 30,
                  child: Text(
                    'Withdrawal',
                    style: MyStyle.tx17P.copyWith(
                      // fontSize: 16,
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

  Widget failedDialog() {
    return AlertDialog(
      title: Text(
        'Failed withdrawal',
        textAlign: TextAlign.center,
        style: MyStyle.tx17B.copyWith(
          fontWeight: FontWeight.w400,
        ),
      ),
      content: Text(
        'The withdrawal failed due to an unexpected error.'
        'Please give it another try.',
        textAlign: TextAlign.center,
        style: MyStyle.tx13B.copyWith(
          color: MyColor.black.withOpacity(0.5),
        ),
      ),
      contentPadding:
          const EdgeInsets.only(left: 8, right: 8, top: 10, bottom: 0),
      actionsPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      actions: [
        const Divider(
          thickness: 1,
        ),
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: SizedBox(
            height: 40,
            child: Center(
              child: Text(
                'Confirm',
                style: MyStyle.tx17B.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget successDialog() {
    return AlertDialog(
      title: Text(
        'Successful withdrawal application',
        textAlign: TextAlign.center,
        style: MyStyle.tx17B.copyWith(
          fontWeight: FontWeight.w400,
        ),
      ),
      content: Text(
        'From the approval of the manager to the withdrawal,'
        'It takes about two days.',
        textAlign: TextAlign.center,
        style: MyStyle.tx13B.copyWith(
          color: MyColor.black.withOpacity(0.5),
        ),
      ),
      contentPadding:
          const EdgeInsets.only(left: 8, right: 8, top: 10, bottom: 0),
      actionsPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      actions: [
        const Divider(
          thickness: 1,
        ),
        InkWell(
          onTap: () {
            Navigator.pop(context);
            // Navigator.pushNamed(context, recommendedRoute);
          },
          child: SizedBox(
            height: 40,
            child: Center(
              child: Text(
                'Confirm',
                style: MyStyle.tx17B.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
