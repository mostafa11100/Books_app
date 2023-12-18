import 'package:flutter/material.dart';

class testapp extends StatelessWidget {
  const testapp({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      //  shrinkWrap: true,
      slivers: <Widget>[
        SliverList(
            delegate: SliverChildListDelegate([
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.white,
          )
        ])),
        // const SliverAppBar(
        //   pinned: true,
        //   expandedHeight: 600.0,
        //   flexibleSpace: FlexibleSpaceBar(
        //     title: Text('Demo'),
        //   ),
        // ),
        SliverList.builder(
            itemCount: 7666,
            itemBuilder: (BuildContext context, i) {
              return Container(child: const Text("mostafa"));
            }),
      ],
    );
  }
}
