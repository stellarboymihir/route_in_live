import 'package:flutter/material.dart';
import 'package:route_in_live/values/MyColor.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: MyColor.grey,
            child: const Text('My'),
          ),
        ],
      ),
    );
  }
}
