import 'package:flutter/material.dart';
import 'package:route_in_live/values/MyStyle.dart';

class MyContainer extends StatefulWidget {
  final int index;
  final String text;
  final Function onTap;
  final Color color;
  final Color textColor;

  const MyContainer({
    super.key,
    required this.index,
    required this.text,
    required this.onTap,
    required this.color,
    required this.textColor,
  });

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      // When the container is tapped, call the callback function
      onTap: () {
        widget.onTap(widget.index);
      },
      // Use a splash color to show some feedback
      splashColor: Colors.blue,
      // Use the color from the widget
      child: Container(
        height: 56,
        width: 60,
        padding: const EdgeInsets.all(6.0),
        margin:
            const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0, right: 0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: widget.color,
        ),
        child: Center(
          child: Text(
            widget.text,
            style: MyStyle.tx10.copyWith(
              fontFamily: 'NotoSansKR-Medium',
              decoration: TextDecoration.none,
              color: widget.textColor,
            ),
          ),
        ),
      ),
    );
  }
}
