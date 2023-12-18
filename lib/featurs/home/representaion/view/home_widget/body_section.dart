import 'package:flutter/cupertino.dart';

import 'home_body_appBar.dart';
import 'listveiw_items.dart';
import '../../../../../core/consts/text_style.dart';

class body extends StatelessWidget {
  const body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          home_body_bar(),
          //
          SizedBox(
            height: 20,
          ),

          listveiw_items(),

          Text(
            "Best Saller",
            style: text_style.text_style_title18,
          ),
        ]),
      ],
    );
  }
}
