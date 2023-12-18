import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgetgineral/faliure_widget.dart';
import '../../../../home/data/models/bokmodel/item.dart';
import '../../../../home/representaion/view/home_widget/nullwidget.dart';
import '../../manager/cubit/details_cubit.dart';
import '../../../../../core/app_rout.dart';

class also_like extends StatefulWidget {
  const also_like({
    super.key,
    required this.item,
  });
  final Item item;
  @override
  State<also_like> createState() => _also_likeState();
}

class _also_likeState extends State<also_like> {
  @override
  void initState() {
    app_rout.item2 = widget.item;
    BlocProvider.of<DetailsCubit>(context)
        .fetch_data(widget.item.volumeInfo!.title);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("You Can also like"),
        const SizedBox(
          height: 10,
        ),
        BlocBuilder<DetailsCubit, DetailsState>(
          builder: (context, state) {
            if (state is Detailssuccess) {
              return Container(
                width: double.infinity,
                height: 100,
                child: ListView.builder(
                    itemCount: state.items!.length - 1,
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, i) {
                      if (state.items![i].volumeInfo!.imageLinks == null) {
                        return Container();
                      }
                      return Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: nullwidget(
                          item: state.items![i],
                          linki: state.items![i].volumeInfo!.imageLinks == null
                              ? ""
                              : state
                                  .items![i].volumeInfo!.imageLinks!.thumbnail,
                          height: 100,
                        ),
                      );
                    }),
              );
            } else if (state is Detailsloading) {
              return CircularProgressIndicator();
            } else {
              return faliure_widget(
                message: state.message!,
              );
            }
          },
        ),
      ],
    );
  }
}
