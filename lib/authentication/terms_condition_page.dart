import 'package:flutter/material.dart';
import 'package:route_in_live/authentication/email_sign_up.dart';
import 'package:route_in_live/constants/routes.dart';
import 'package:route_in_live/values/MyColor.dart';
import 'package:route_in_live/values/MyStyle.dart';

class TermConditionPage extends StatefulWidget {
  const TermConditionPage({super.key});

  @override
  State<TermConditionPage> createState() => _TermConditionPageState();
}

class _TermConditionPageState extends State<TermConditionPage> {
  bool termsAndConditionsAccepted = false;
  bool personalInfoAccepted = false;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: MyColor.grey,
      appBar: AppBar(
        title: Text(
          'Terms and Conditions',
          textAlign: TextAlign.center,
          style: MyStyle.tx14OB.copyWith(color: Colors.black87),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (termsAndConditionsAccepted == false &&
                          personalInfoAccepted == false) {
                        termsAndConditionsAccepted = true;
                        personalInfoAccepted = true;

                        print(
                            'Color Changed $termsAndConditionsAccepted $personalInfoAccepted');
                      } else {
                        termsAndConditionsAccepted = false;
                        personalInfoAccepted = false;
                        print(
                            'Color not Changed $termsAndConditionsAccepted $personalInfoAccepted');
                      }
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 3.0, horizontal: 8.0),
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          termsAndConditionsAccepted && personalInfoAccepted
                              ? Icons.check_circle
                              : Icons.check_circle_outline,
                          color:
                              termsAndConditionsAccepted && personalInfoAccepted
                                  ? MyColor.orange
                                  : MyColor.blackO,
                          size: 24,
                        ),
                        Text(
                          'All agreements to the terms and conditions',
                          style: MyStyle.tx12B.copyWith(
                            color: termsAndConditionsAccepted &&
                                    personalInfoAccepted
                                ? MyColor.orange
                                : MyColor.blackO,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                setState(() {
                  termsAndConditionsAccepted = !termsAndConditionsAccepted;
                });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                margin: EdgeInsets.all(8.0),
                height: 40,
                width: MediaQuery.of(context).size.width,
                color: termsAndConditionsAccepted
                    ? MyColor.orange
                    : MyColor.blackO,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Terms and conditions',
                      textAlign: TextAlign.start,
                      style: MyStyle.tx14W.copyWith(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'NotoSansKR-Bold',
                          letterSpacing: 0.3),
                    ),
                    Icon(
                      termsAndConditionsAccepted
                          ? Icons.check_circle
                          : Icons.check_circle_outline,
                      color: Colors.white,
                      size: 24,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              margin: EdgeInsets.all(8.0),
              height: 188,
              color: MyColor.white,
              child: ListView(
                shrinkWrap: true,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Article 1 (Purpose) ',
                          style: MyStyle.tx12B
                              .copyWith(fontWeight: FontWeight.w700),
                        ),
                        const WidgetSpan(
                          child: SizedBox(height: 50),
                        ),
                        const TextSpan(
                            text:
                                'Thank you for using the service provided by OneQ Co.,'
                                'Ltd. (hereinafter referred to as "Company"). The'
                                'company is a company that makes it more convenient for'
                                ' you to use various Internet and mobile services.  '
                                ' These terms and conditions stipulate basic matters such '
                                'as rights, obligations and responsibilities, conditions',
                            style: MyStyle.tx12B),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  personalInfoAccepted = !personalInfoAccepted;
                });
              },
              child: Container(
                margin: EdgeInsets.all(8.0),
                padding: const EdgeInsets.all(8.0),
                height: 40,
                width: MediaQuery.of(context).size.width,
                color: personalInfoAccepted ? MyColor.orange : MyColor.blackO,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Personal Information Collection',
                      textAlign: TextAlign.start,
                      style: MyStyle.tx14W.copyWith(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'NotoSansKR-Bold',
                          letterSpacing: 0.3),
                    ),
                    Icon(
                      personalInfoAccepted
                          ? Icons.check_circle
                          : Icons.check_circle_outline,
                      color: Colors.white,
                      size: 24,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              padding: EdgeInsets.all(8.0),
              color: MyColor.white,
              height: 188,
              width: MediaQuery.of(context).size.width,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Items of personal information you collect  \n',
                      style:
                          MyStyle.tx12B.copyWith(fontWeight: FontWeight.w700),
                    ),
                    const WidgetSpan(
                      child: SizedBox(height: 30),
                    ),
                    const TextSpan(
                        text:
                            'Routine Live collects the minimum amount of personal '
                            'information necessary for contract implementation, user '
                            'identification, service improvement, new service'
                            ' development, membership registration, and counseling \n '
                            'on service provision.\n'
                            'Routine Live collects essential items essential to perform.',
                        style: MyStyle.tx12B),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  if (termsAndConditionsAccepted == true &&
                      personalInfoAccepted == true) {
                    // termsAndConditionsAccepted = true;
                    // personalInfoAccepted = true;
                    Navigator.pop(context);
                    Navigator.pushNamed(
                      context,
                      emailSignUpRoute,
                    );
                  } else {
                    // termsAndConditionsAccepted = false;
                    // personalInfoAccepted = false;
                    ScaffoldMessenger.of(context).showSnackBar(
                        'Please select both the conditions!' as SnackBar);
                  }
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  decoration:
                      (termsAndConditionsAccepted && personalInfoAccepted)
                          ? const BoxDecoration(gradient: MyColor.orangeGrad)
                          : BoxDecoration(gradient: MyColor.inOrangeGrad),
                  child: Center(
                    child: Text(
                      'Next',
                      style:
                          MyStyle.tx14W.copyWith(fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
