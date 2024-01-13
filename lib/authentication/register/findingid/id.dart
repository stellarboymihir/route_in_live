import 'package:flutter/material.dart';
import 'package:route_in_live/authentication/register/findingpass/findingemailpass.dart';
import 'package:route_in_live/constants/routes.dart';
import 'package:route_in_live/values/MyColor.dart';
import 'package:route_in_live/values/MyStyle.dart';

class ID extends StatefulWidget {
  const ID({super.key});

  @override
  State<ID> createState() => _IDState();
}

class _IDState extends State<ID> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: Divider(
            thickness: 0,
            color: MyColor.black.withOpacity(0.1),
          ),
        ),
        title: Text(
          'Finding the ID',
          style: MyStyle.tx14W.copyWith(color: MyColor.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  text: 'Kim Ttoreu ',
                  style: MyStyle.tx14O.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                  children: [
                    TextSpan(
                      text: 'E-mail is',
                      style: MyStyle.tx14Blk.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'test@onecue.kr',
                style: MyStyle.tx20.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 19,
                    fontFamily: 'NotoSansKR=Medium'),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 44,
                width: MediaQuery.of(context).size.width,
                color: MyColor.orange,
                child: Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, loginRoute, (route) => false);
                    },
                    child: const Text('Go to the login screen',
                        style: MyStyle.tx14W),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(
                    context,
                    passFindEmailRoute,
                  );
                },
                child: Text(
                  'Did you forget your password?',
                  style: MyStyle.tx10.copyWith(
                    fontFamily: 'NotoSansKR-Medium',
                    color: MyColor.black.withOpacity(0.7),
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
