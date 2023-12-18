import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:mcvprjct/core/consts/failure.dart';

import 'package:mcvprjct/featurs/home/data/models/bokmodel/bokmodel.dart';

import '../../../../core/api.dart';
import 'home_repo.dart';

class home_repo_impl implements home_repo {
  home_repo_impl(this.a);
  final apiservices a;
  @override
  Future<Either<failure, Bokmodel>> fetchBooksPestsaler() async {
    //fetch data from api
    try {
      print("hi");
      var data = await a.fetchdata(
          endpoint: "Filtering=free-ebooks&Sorting=newest &q=subject:science");

      return right(Bokmodel.fromJson(data));
    } catch (e) {
      print("eee2 === ${e.toString()}");
      if (e is DioException) return left(server_failure.dioerror(e));
      return left(server_failure(e));
    }
  }

  @override
  Future<Either<failure, Bokmodel>> fetchBooksfeatured() async {
    try {
      var data = await a.fetchdata(
          endpoint: "Filtering=free-ebooks&q=subject:programming");

      return right(Bokmodel.fromJson(data));
    } catch (e) {
      if (e is DioException) return left(server_failure.dioerror(e));
      return left(server_failure(e.toString()));
    }
  }
}
