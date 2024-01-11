import 'package:flutter/material.dart';

class FollowingScreen extends StatefulWidget {
  const FollowingScreen({super.key});

  @override
  State<FollowingScreen> createState() => _FollowingScreenState();
}

class _FollowingScreenState extends State<FollowingScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      // Align the column to the start of the main axis (vertical)
      mainAxisAlignment: MainAxisAlignment.start,
      // Align the column to the center of the cross axis (horizontal)
      crossAxisAlignment: CrossAxisAlignment.center,
      // The first child is a Row widget that contains two Container widgets
      children: [
        Row(
          // Align the row to the center of the main axis (horizontal)
          mainAxisAlignment: MainAxisAlignment.center,
          // Align the row to the start of the cross axis (vertical)
          crossAxisAlignment: CrossAxisAlignment.start,
          // The first Container widget has a width of 100 and a height of 100
          // It also has a red background color and a 10-pixel margin
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              margin: EdgeInsets.all(10),
            ),
            // The second Container widget has a width of 100 and a height of 100
            // It also has a green background color and a 10-pixel margin
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
              margin: EdgeInsets.all(10),
            ),
          ],
        ),
        // The second child is a Container widget that has a width of 100 and a height of 100
        // It also has a blue background color and a 10-pixel margin
        // It is wrapped in an Align widget that aligns it to the left of its parent
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            margin: EdgeInsets.all(10),
          ),
        ),
      ],
    );
  }
}
