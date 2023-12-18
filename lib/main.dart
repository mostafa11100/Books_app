// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mcvprjct/core/app_rout.dart';
import 'package:mcvprjct/featurs/book_details/representaion/manager/cubit/details_cubit.dart';
import 'package:mcvprjct/featurs/home/data/repostry/home_repo_impl.dart';

import 'core/api.dart';
import 'core/consts/consts.dart';
import 'package:google_fonts/google_fonts.dart';

import 'featurs/book_details/data/repo_imp.dart';
import 'featurs/home/representaion/manger/Best_saler/cubit/best_saler_cubit.dart';
import 'featurs/home/representaion/manger/cubit/featured_box_cubit_cubit.dart';

void main() {
  runApp(bookapp());
}

class bookapp extends StatelessWidget {
  const bookapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => BestSalerCubit(
                    home_repo_impl(
                      apiservices(
                        dio: Dio(),
                      ),
                    ),
                  )..fetch()),
          BlocProvider(
              create: (context) => FeaturedBoxCubit(
                    home_repo_impl(
                      apiservices(
                        dio: Dio(),
                      ),
                    ),
                  )..fetch()),
          BlocProvider(
              create: (context) =>
                  DetailsCubit(details_repo_imp(apiservices(dio: Dio()))))
        ],
        child: MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: app_rout.rout,
            theme: ThemeData(
              iconTheme: IconThemeData(color: Colors.white),
              textTheme:
                  GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
              scaffoldBackgroundColor: color_app,
            )));
  }
}
