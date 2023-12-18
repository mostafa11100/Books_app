import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mcvprjct/featurs/home/data/models/bokmodel/item.dart';

import '../../../../data/repostry/home_repo_impl.dart';

part 'best_saler_state.dart';

class BestSalerCubit extends Cubit<BestSalerState> {
  BestSalerCubit(this.hr) : super(FeaturedBoxCubitInitial());
  final home_repo_impl hr;
  void fetch() async {
    emit(FeaturedBookloading());
    print("value ==  ");
    var result = await hr.fetchBooksPestsaler();

    result.fold((failure) {
      print("errorrr ====  ${failure.message_error}");
      emit(FeaturedBookfalure(failure.message_error));
    }, (Bokmodel) {
      print("result   ====  ${Bokmodel.items}");
      emit(FeaturedBooksucces(Bokmodel.items));
    });
  }
}
