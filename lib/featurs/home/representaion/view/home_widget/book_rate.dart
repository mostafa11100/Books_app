import 'package:flutter/material.dart';
import 'package:mcvprjct/core/consts/text_style.dart';

class book_rate extends StatelessWidget {
  const book_rate({super.key, this.rate, this.count});
  final rate;
  final count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star,
          color: Color.fromARGB(255, 172, 155, 2),
          size: 24,
        ),
        // const SizedBox(
        //   width: 1,
        // ),
        Text(
          rate.toString(),
          style: text_style.text_style_14.copyWith(
            fontSize: 15,
          ),
        ),
        const SizedBox(
          width: 2,
        ),
        Text(
          "(${count.toString()})",
          style: text_style.text_style_14
              .copyWith(color: Color.fromARGB(202, 250, 247, 247)),
        ),
        const SizedBox(
          width: 2,
        ),
      ],
    );
  }
}
