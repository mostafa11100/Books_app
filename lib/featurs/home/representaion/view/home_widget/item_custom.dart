import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mcvprjct/core/app_rout.dart';
import 'package:mcvprjct/featurs/home/data/models/bokmodel/item.dart';


class nullwidget2 extends StatelessWidget {
  const nullwidget2({super.key, required this.linki, this.item});
  final String? linki;
  final Item? item;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          app_rout.item2 = item;
          GoRouter.of(context).pushReplacement(app_rout.book_details_screan);
        },
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: SizedBox(
            child: AspectRatio(
              aspectRatio: 8 / 10,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(
                    imageUrl: linki!,
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
        ));
  }
}
