import 'package:flutter/material.dart';

class iconButton extends StatelessWidget {
  const iconButton({super.key, required this.icon, required this.onpressed});
  final Icon icon;
  final Function() onpressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onpressed, icon: icon);
  }
}
