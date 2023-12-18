import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../core/api.dart';
import '../../../core/consts/failure.dart';
import '../../home/data/models/bokmodel/bokmodel.dart';
import 'details_repo/detils_repo.dart';

class details_repo_imp implements details_repo {
  details_repo_imp(this.api);
  final apiservices api;
  @override
  Future<Either<failure, Bokmodel>> featurdyoualsolike(k) async {
    try {
      var result = await api.fetchdata(
          endpoint: "Filtering=free-ebooks&Sorting=related &title=$k&q=$k");
      return right(Bokmodel.fromJson(result));
    } catch (e) {
      if (e is DioException) {
        return left(server_failure.dioerror(e));
      } else {
        return left(server_failure.response_error(400, e.toString()));
      }
    }
  }
}
