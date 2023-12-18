import 'package:flutter/material.dart';

class faliure_widget extends StatelessWidget {
  const faliure_widget({super.key, required this.message});
  final String message;
  @override
  Widget build(BuildContext context) {
    return Text(
      message,
      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
    );
  }
}
