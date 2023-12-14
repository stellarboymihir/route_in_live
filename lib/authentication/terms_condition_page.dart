import 'package:flutter/material.dart';
import 'package:route_in_live/values/MyStyle.dart';

class TermConditionPage extends StatefulWidget {
  const TermConditionPage({super.key});

  @override
  State<TermConditionPage> createState() => _TermConditionPageState();
}

class _TermConditionPageState extends State<TermConditionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Terms and Conditions',
          style: MyStyle.tx14OB.copyWith(color: Colors.black87),
        ),
      ),
    );
  }
}
