import 'package:flutter/material.dart';
import 'package:route_in_live/values/MyStyle.dart';

import '../../../values/MyColor.dart';

class LiveReservation extends StatefulWidget {
  const LiveReservation({super.key});

  @override
  State<LiveReservation> createState() => _LiveReservationState();
}

class _LiveReservationState extends State<LiveReservation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Application for live broadcast reservation',
          style: MyStyle.tx14W.copyWith(
            color: MyColor.black,
            fontSize: 13,
          ),
        ),
        centerTitle: true,
      ),
      body:
  }
}
