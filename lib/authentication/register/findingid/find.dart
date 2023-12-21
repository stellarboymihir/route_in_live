import 'package:flutter/material.dart';
import 'package:route_in_live/values/MyColor.dart';
import 'package:route_in_live/values/MyStyle.dart';

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
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FindingId(),
                  ),
                );
              },
              child: Container(
                // alignment: Alignment.center,
                height: 120,
                width: 349,
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
              height: 8,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FindingEmailPass(),
                  ),
                );
              },
              child: Container(
                // alignment: Alignment.center,
                height: 120,
                width: 349,
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FindingId(),
                  ),
                );
              },
              child: Text(
                'Do you need to register as a regular member registration?',
                style: MyStyle.tx10.copyWith(fontFamily: 'NotoSansKR-Medium'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
