import 'package:flutter/material.dart';

import 'home_widget/body_section.dart';

import 'home_widget/list_BestSaller.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Padding(
      padding: EdgeInsets.all(15),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: body(),
          )),
          SliverToBoxAdapter(child: Best_saler_list())
        ],
      ),
    ));
  }
}
