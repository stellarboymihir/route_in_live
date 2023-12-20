import 'package:flutter/material.dart';
import 'package:route_in_live/values/MyStyle.dart';

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
    );
  }
}
