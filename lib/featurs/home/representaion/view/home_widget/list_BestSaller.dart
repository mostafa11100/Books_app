import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgetgineral/faliure_widget.dart';
import '../../manger/Best_saler/cubit/best_saler_cubit.dart';
import 'item_.dart';

class Best_saler_list extends StatelessWidget {
  const Best_saler_list({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSalerCubit, BestSalerState>(
      builder: (context, state) {
        if (state is FeaturedBookloading) {
          print("loading");
          return Container(child: Center(child: CircularProgressIndicator()));
        } else if (state is FeaturedBooksucces) {
          print("success");
          return ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.Books!.length - 1,
            itemBuilder: (BuildContext context, i) {
              if (state.Books![i].volumeInfo!.imageLinks == null) {
                return Container();
              }
              return Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  child: item_(
                    modelbook: state.Books![i],

                    //    price: state.Books![i].saleInfo!.listPrice!.amount,
                  ));
            },
          );
        } else {
          print("fail");
          return faliure_widget(
            message: state.message,
          );
        }
      },
    );
  }
}
