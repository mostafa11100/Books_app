import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mcvprjct/featurs/home/representaion/view/home_widget/text_custom.dart';

import '../../../../../core/consts/fonts.dart';
import '../../../../../core/consts/text_style.dart';
import '../../../../../core/widgetgineral/faliure_widget.dart';
import '../../../../book_details/representaion/manager/cubit/details_cubit.dart';
import '../../../../home/data/models/bokmodel/item.dart';
import '../../../../home/representaion/view/home_widget/book_rate.dart';
import '../../../../../core/app_rout.dart';
import '../../../../home/representaion/view/home_widget/nullwidget.dart';

class result_search extends StatefulWidget {
  const result_search({super.key, required this.item});
  final String item;
  @override
  State<result_search> createState() => _result_searchState();
}

class _result_searchState extends State<result_search> {
  @override
  Widget build(BuildContext context) {
    return Best_saler_list2();
  }
}

class Best_saler_list2 extends StatelessWidget {
  const Best_saler_list2({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsCubit_search, DetailsState>(
        builder: (context, state) {
      if (state is Detailsloading) {
        return Container(child: Center(child: CircularProgressIndicator()));
      } else if (state is Detailssuccess) {
        print("success");
        return ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: state.items!.length - 1,
          itemBuilder: (BuildContext context, i) {
            if (state.items![i].volumeInfo!.imageLinks == null) {
              return Container();
            }
            return Padding(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                child: item_2(
                  modelbook: state.items![i],

                  //    price: state.Books![i].saleInfo!.listPrice!.amount,
                ));
          },
        );
      } else if (state is Detailsfalier) {
        print("fail");
        return faliure_widget(
          message: state.message!,
        );
      } else
        return Container(
          child: Text(" enter eny book to search"),
        );
    });
  }
}

class item_2 extends StatelessWidget {
  const item_2({
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
                    fontSize: 18,
                    fontFamily: fontfamily.Merriweather,
                  )),
              const SizedBox(
                height: 3,
              ),
              text_custom(
                content: "not found",
                style: text_style.text_style_14
                    .copyWith(color: Color.fromARGB(202, 250, 247, 247)),
              ),
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
                    SizedBox(
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
