import 'package:flutter/material.dart';
import '../../../home/data/models/bokmodel/item.dart';
import 'b_details_widget/also_like_list.dart';
import 'b_details_widget/body_section.dart';

class book_details extends StatelessWidget {
  const book_details({required this.item});
  final Item item;
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: body_details_section(
                item: item,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
                flex: 1,
                child: also_like(
                  item: item,
                ))
          ],
        ),
      ),
    ));
  }
}
