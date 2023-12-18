import 'package:flutter/cupertino.dart';
import 'package:mcvprjct/featurs/book_details/representaion/view/b_details_widget/row_button.dart';

import '../../../../home/data/models/bokmodel/item.dart';
import '../../../../home/representaion/view/home_widget/book_rate.dart';
import '../../../../home/representaion/view/home_widget/item_custom.dart';
import 'appBar_widget.dart';
import '../../../../../core/consts/text_style.dart';

class body_details_section extends StatelessWidget {
  const body_details_section({super.key, required this.item});
  final Item item;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        appBar_widget(),
        Padding(
            padding: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: MediaQuery.of(context).size.width / 6),
            child: nullwidget2(
              linki: item.volumeInfo!.imageLinks!.thumbnail!,
            )),
        Center(
          child: Text(
            maxLines: 2,
            textAlign: TextAlign.center,
            item.volumeInfo!.title!,
            style: text_style.text_style_30
                .copyWith(fontWeight: FontWeight.w400, fontSize: 23),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Opacity(
          opacity: 0.6,
          child: Text(
            item.volumeInfo!.authors == null
                ? "not found"
                : item.volumeInfo!.authors![0],
            style:
                text_style.text_style_20.copyWith(fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        book_rate(
          rate: item.volumeInfo!.averageRating ?? 0,
          count: item.volumeInfo!.ratingsCount ?? 0,
        ),
        const SizedBox(
          height: 20,
        ),
        Button_saler_row(
          item: item,
        ),
      ],
    );
  }
}
