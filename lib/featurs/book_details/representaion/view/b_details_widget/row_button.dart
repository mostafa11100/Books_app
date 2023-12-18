import 'package:flutter/material.dart';

import '../../../../../core/consts/consts.dart';
import '../../../../home/data/models/bokmodel/item.dart';
import 'button_custom.dart';
import '../../../../../core/consts/text_style.dart';
import 'package:url_launcher/url_launcher.dart';

class Button_saler_row extends StatelessWidget {
  const Button_saler_row({super.key, required this.item});
  final Item item;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        flex: 1,
        child: custom_Button(
          onpressed: () {},
          text: "0 € ",
          textStyle:
              text_style.text_style_title18.copyWith(color: Colors.black),
          height: 48,
          radius: 12,
          color: color_button1,
          border: const BorderRadius.only(
              topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
        ),
      ),
      Expanded(
          flex: 1,
          child: custom_Button(
            onpressed: () async {
              String? uri = item.volumeInfo!.previewLink!;
              if (await canLaunchUrl(Uri.parse(uri))) {
                launchUrl(Uri.parse(uri));
              } else
                print("soryy icant $uri");
            },
            text: "Free",
            textStyle: text_style.text_style_title18,
            height: 48,
            radius: 12,
            color: color_button,
            border: const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12)),
          )),
    ]);
  }
}
