import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mcvprjct/featurs/book_details/representaion/manager/cubit/details_cubit.dart';
import 'package:mcvprjct/featurs/search/representaion/view/widget/result_search.dart';
import 'package:mcvprjct/featurs/search/representaion/view/widget/text_custom.dart';

// ignore: must_be_immutable
class search_screan extends StatelessWidget {
  search_screan({super.key});

  late TextEditingController control;
  @override
  Widget build(BuildContext context) {
    control = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            custom_text(
              onpressed: () {
                BlocProvider.of<DetailsCubit_search>(context)
                    .fetch_datasearch(control.text);
              },
              controler: control,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Search Result",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                child: result_search(
              item: control.text,
            ))
          ],
        ),
      ),
    );
  }
}
