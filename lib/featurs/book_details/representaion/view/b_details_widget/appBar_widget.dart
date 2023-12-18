import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mcvprjct/core/app_rout.dart';

import '../../../../../core/consts/icon.dart';

class appBar_widget extends StatelessWidget {
  const appBar_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            onTap: () {
              GoRouter.of(context).pushReplacement(app_rout.home_scren);
            },
            child: appicon.close_icon),
        Spacer(),
        GestureDetector(onTap: () {}, child: appicon.cart_icon),
      ],
    );
  }
}
