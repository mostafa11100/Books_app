import 'package:flutter/material.dart';

class custom_Button extends StatelessWidget {
  const custom_Button(
      {super.key,
      required this.onpressed,
      required this.text,
      required this.textStyle,
      required this.radius,
      required this.height,
      required this.color,
      this.border});

  final Function() onpressed;
  final String text;
  final TextStyle textStyle;
  final double radius;
  final double height;
  final Color color;
  final BorderRadius? border;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
              borderRadius:
                  border == null ? BorderRadius.circular(12) : border!),
        ),
        onPressed: onpressed,
        child: Text(
          text.toString(),
          style: textStyle,
        ),
      ),
    );
  }
}
