import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mcvprjct/core/app_rout.dart';
import 'package:mcvprjct/featurs/book_details/representaion/manager/cubit/details_cubit.dart';

import 'package:mcvprjct/featurs/home/representaion/view/home_widget/text_custom.dart';

import '../../../data/models/bokmodel/item.dart';
import '../../../../../core/consts/fonts.dart';
import '../../../../../core/consts/text_style.dart';
import 'book_rate.dart';
import 'nullwidget.dart';

class item_ extends StatelessWidget {
  const item_({
    super.key,
    required this.modelbook,
  });

  final Item? modelbook;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        app_rout.item2 = modelbook!;
        BlocProvider.of<DetailsCubit>(context)
            .fetch_data(modelbook!.volumeInfo!.title);
        GoRouter.of(context).pushReplacement(app_rout.book_details_screan);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          nullwidget(
            item: modelbook!,
            height: 118,
            linki: modelbook!.volumeInfo!.imageLinks != null
                ? modelbook!.volumeInfo!.imageLinks!.thumbnail
                : "",
          ),
          const SizedBox(
            width: 24,
          ),

          // color: Colors.white,
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              text_custom(
                  content: modelbook!.volumeInfo!.title!,
                  style: text_style.text_style_20.copyWith(
                    fontFamily: fontfamily.Merriweather,
                  )),
              const SizedBox(
                height: 3,
              ),
              text_custom(
                content: modelbook!.volumeInfo!.authors![0].toString(),
                style: text_style.text_style_14
                    .copyWith(color: Color.fromARGB(202, 250, 247, 247)),
              ),
              //  Container(width: 200, color: Colors.blue, child: book_rate()

              Container(
                width: 205,
                //   color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      textAlign: TextAlign.start,
                      "Free",
                      style: text_style.text_style_20,
                    ),
                    const SizedBox(
                      width: 84,
                    ),
                    book_rate(
                      count: modelbook!.volumeInfo!.ratingsCount ?? 0,
                      rate: modelbook!.volumeInfo!.averageRating ?? 0,
                    ),

                    // ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
