import 'package:flutter/material.dart';
import 'package:route_in_live/values/MyColor.dart';
import 'package:route_in_live/values/MyStyle.dart';

import '../../../constants/routes.dart';
import '../findingpass/findingemailpass.dart';
import 'findingid.dart';

class Find extends StatefulWidget {
  const Find({super.key});

  @override
  State<Find> createState() => _FindState();
}

class _FindState extends State<Find> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ID / Finding a password',
          style: MyStyle.tx14W.copyWith(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: Divider(
            thickness: 0,
            color: MyColor.black.withOpacity(0.1),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(
                  context,
                  idCertifyFindRoute,
                );
              },
              child: Container(
                // alignment: Alignment.center,
                height: 120,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(
                  width: 1,
                  color: MyColor.orange,
                )),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.person_2_outlined,
                        color: MyColor.orange,
                        size: 24,
                      ),
                      Text(
                        'Finding the ID',
                        style: MyStyle.tx16O,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(
                  context,
                  passFindEmailRoute,
                );
              },
              child: Container(
                // alignment: Alignment.center,
                height: 120,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(
                  width: 1,
                  color: MyColor.orange,
                )),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/lock.png',
                          color: MyColor.orange),
                      Text(
                        'Finding a password',
                        style: MyStyle.tx16O,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(
                  context,
                  termsAndConditionRoute,
                );
              },
              child: Text(
                'Do you need to register as a regular member registration?',
                style: MyStyle.tx10.copyWith(
                  fontFamily: 'NotoSansKR-Medium',
                  color: MyColor.black.withOpacity(0.7),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
