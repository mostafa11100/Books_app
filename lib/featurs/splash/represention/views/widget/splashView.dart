import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/consts/assets.dart';

class splashView extends StatefulWidget {
  const splashView({super.key});
  @override
  State<splashView> createState() => _splashViewState();
}

class _splashViewState extends State<splashView> {
  @override
  void initState() {
    tonext();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
          Image.asset(assets.logo),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Read The Book",
            textAlign: TextAlign.center,
          )
        ]));
  }

  void tonext() {
    Future.delayed(Duration(seconds: 3), () {
      GoRouter.of(context).pushNamed('/home');
    });
  }
}
