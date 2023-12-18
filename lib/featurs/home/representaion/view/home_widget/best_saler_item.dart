import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mcvprjct/core/app_rout.dart';
import '../../../data/models/bokmodel/item.dart';

class Best_saler_item extends StatelessWidget {
  const Best_saler_item({super.key, this.linkimage, required this.item});
  final String? linkimage;
  final Item item;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        app_rout.item2 = item;
        GoRouter.of(context).push(app_rout.book_details_screan);
      },
      child: SizedBox(
        height: 118,
        child: AspectRatio(
          aspectRatio: 7 / 10,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CachedNetworkImage(
                imageUrl: linkimage!,
                fit: BoxFit.fill,
                placeholder: ((context, url) {
                  return Center(child: CircularProgressIndicator());
                }),
                errorWidget: (context, i, d) {
                  return Icon(Icons.error);
                },
              )),
        ),
      ),
    );
  }
}
