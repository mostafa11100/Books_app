import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/consts/assets.dart';

import '../../../../../core/app_rout.dart';

class home_body_bar extends StatelessWidget {
  const home_body_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          assets.logo,
          height: 45,
          width: 90,
        ),
        Spacer(),
        IconButton(
            onPressed: () {
              GoRouter.of(context).push(app_rout.searchscrean);
            },
            icon: Icon(
              Icons.search,
              size: 25,
            ))
      ],
    );
  }
}
