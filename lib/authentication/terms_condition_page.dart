import 'package:flutter/material.dart';
import 'package:route_in_live/authentication/email_sign_up.dart';
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(5),
          ),
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
                          color:
                              termsAndConditionsAccepted && personalInfoAccepted
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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 6.0),
                height: 40,
                width: 350,
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
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Scrollbar(
              child: ListView(
                shrinkWrap: true,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Article 1 (Purpose)  \n',
                      style:
                          MyStyle.tx12B.copyWith(fontWeight: FontWeight.w700),
                      children: const <TextSpan>[
                        TextSpan(
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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                height: 40,
                width: 350,
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
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RichText(
              text: TextSpan(
                text: 'Items of personal information you collect  \n',
                style: MyStyle.tx12B.copyWith(fontWeight: FontWeight.w700),
                children: const <TextSpan>[
                  TextSpan(
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EmailSignUp()),
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
                width: 350,
                decoration: (termsAndConditionsAccepted && personalInfoAccepted)
                    ? const BoxDecoration(gradient: MyColor.orangeGrad)
                    : BoxDecoration(gradient: MyColor.inOrangeGrad),
                child: Center(
                  child: Text(
                    'Next',
                    style: MyStyle.tx14W.copyWith(fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
