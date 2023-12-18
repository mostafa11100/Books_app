import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../featurs/book_details/data/repo_imp.dart';
import '../featurs/book_details/representaion/manager/cubit/details_cubit.dart';
import '../featurs/book_details/representaion/view/book_details.dart';
import '../featurs/home/data/models/bokmodel/item.dart';
import '../featurs/home/representaion/view/home_scren.dart';
import '../featurs/search/representaion/view/search_screan.dart';
import '../featurs/splash/represention/views/screan/splash_screan.dart';
import 'api.dart';

abstract class app_rout {
  app_rout();
  static Item? item2;
  static final String home_scren = '/home';

  static final String book_details_screan = '/book_details';

  static final String searchscrean = '/search';

  static final rout = GoRouter(routes: [
    GoRoute(
        path: '/',
        builder: (context, state) {
          return splash_screan();
        }),
    GoRoute(
        path: '/home',
        name: '/home',
        builder: (context, state) {
          return home();
        }),
    GoRoute(
        path: '/book_details',
        builder: (context, state) {
          return book_details(item: item2!);
        }),
    GoRoute(
        path: '/search',
        builder: (context, state) {
          return BlocProvider(
            create: (context) =>
                DetailsCubit_search(details_repo_imp(apiservices(dio: Dio()))),
            child: search_screan(),
          );
        }),
  ]);
}
