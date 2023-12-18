import 'package:flutter/material.dart';

class text_custom extends StatelessWidget {
  const text_custom({super.key, required this.content, this.style});
  final String content;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 144,
      child: Text(
        content,
        style: style,
        maxLines: 2,
      ),
    );
  }
}
