import 'package:flutter/material.dart';

import '../../../data/models/bokmodel/item.dart';
import 'best_saler_item.dart';

class nullwidget extends StatelessWidget {
  const nullwidget(
      {super.key,
      required this.linki,
      required this.height,
      required this.item});
  final String? linki;
  final double height;
  final Item item;
  @override
  Widget build(BuildContext context) {
    return linki == ""
        ? Container(
            height: height,
            child: AspectRatio(
              aspectRatio: 7 / 10,
            ))
        : Best_saler_item(
            item: item,
            linkimage: linki,
          );
  }
}
