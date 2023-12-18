import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/widgetgineral/faliure_widget.dart';
import '../../manger/cubit/featured_box_cubit_cubit.dart';
import 'item_custom.dart';

class listveiw_items extends StatelessWidget {
  const listveiw_items({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBoxCubit, FeaturedBoxCubitState>(
      builder: (context, state) {
        if (state is FeaturedBooksucces) {
          return Container(
            margin: EdgeInsets.only(bottom: 40),
            height: MediaQuery.of(context).size.height / 3.5,
            // width: double.infinity,
            child: ListView.builder(
              itemCount: state.Books!.length - 2,
              padding: EdgeInsets.all(5),
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext contexto, i) {
                return nullwidget2(
                    item: state.Books![i],
                    linki: state.Books![i].volumeInfo!.imageLinks!.thumbnail);
              },
            ),
          );
        } else if (state is FeaturedBookloading)
          return CircularProgressIndicator();
        else {
          print("eror faliure =  ${state.message}");
          return faliure_widget(
            message: state.message,
          );
        }
      },
    );
  }
}
