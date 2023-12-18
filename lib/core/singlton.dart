import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mcvprjct/core/api.dart';

import '../featurs/home/data/repostry/home_repo_impl.dart';

GetIt getit = GetIt.instance;
void setup() {
  getit.registerSingleton<apiservices>(
    apiservices(
      dio: Dio(),
    ),
  );
  getit.registerSingleton<home_repo_impl>(
    home_repo_impl(getit.get<apiservices>()),
  );
}
