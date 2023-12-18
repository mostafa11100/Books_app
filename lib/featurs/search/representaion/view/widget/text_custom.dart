import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class custom_text extends StatelessWidget {
  const custom_text(
      {super.key, required this.controler, required this.onpressed});

  final TextEditingController controler;
  final Function() onpressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      child: TextField(
        onEditingComplete: onpressed,
        controller: controler,
        decoration: InputDecoration(
            hintText: "search",
            suffixIcon: Opacity(
              opacity: .3,
              child: IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 243, 243, 243),
                ),
                onPressed: onpressed,
              ),
            ),
            hintStyle: TextStyle(color: Colors.white),
            enabledBorder: input(),
            focusedBorder: input2()),
      ),
    );
  }
}

input() {
  return OutlineInputBorder(
    borderSide: const BorderSide(
      color: Colors.white,
    ),
    borderRadius: BorderRadius.circular(16),
  );
}

input2() {
  return OutlineInputBorder(
    borderSide: const BorderSide(
      color: Color.fromARGB(255, 190, 189, 189),
    ),
    borderRadius: BorderRadius.circular(16),
  );
}
