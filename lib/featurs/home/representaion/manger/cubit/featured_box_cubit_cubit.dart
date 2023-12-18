import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/repostry/home_repo_impl.dart';

part 'featured_box_cubit_state.dart';

class FeaturedBoxCubit extends Cubit<FeaturedBoxCubitState> {
  FeaturedBoxCubit(this.hr) : super(FeaturedBoxCubitInitial());
  final home_repo_impl hr;
  void fetch() async {
    emit(FeaturedBookloading());
    var result = await hr.fetchBooksPestsaler();
    result.fold((failure) {
      emit(FeaturedBookfalure(failure.message_error));
      // ignore: non_constant_identifier_names
    }, (Bokmodel) {
      emit(FeaturedBooksucces(Bokmodel.items));
    });
  }
}
