// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import '../../../../../core/consts/failure.dart';
import '../../../../home/data/models/bokmodel/bokmodel.dart';
import '../../../../home/data/models/bokmodel/item.dart';
import '../../../data/repo_imp.dart';

part 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit(this.repo) : super(DetailsInitial());
  final details_repo_imp repo;

  void fetch_data(k) async {
    emit(Detailsloading());
    Either<failure, Bokmodel> result = await repo.featurdyoualsolike(k);
    result.fold((left) {
      emit(Detailsfalier(left.message_error));
    }, (r) {
      emit(Detailssuccess(r.items));
    });
  }

  void fetch_datasearch(k) async {
    emit(Detailsloading());
    Either<failure, Bokmodel> result = await repo.featurdyoualsolike(k);
    result.fold((left) {
      emit(Detailsfalier(left.message_error));
    }, (r) {
      emit(Detailssuccess(r.items));
    });
  }
}

class DetailsCubit_search extends Cubit<DetailsState> {
  DetailsCubit_search(this.repo) : super(DetailsInitial());
  final details_repo_imp repo;

  void fetch_datasearch(k) async {
    emit(Detailsloading());
    Either<failure, Bokmodel> result = await repo.featurdyoualsolike(k);
    result.fold((left) {
      emit(Detailsfalier(left.message_error));
    }, (r) {
      emit(Detailssuccess(r.items));
    });
  }
}
