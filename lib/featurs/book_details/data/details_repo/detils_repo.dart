import 'package:dartz/dartz.dart';
import '../../../../core/consts/failure.dart';
import '../../../home/data/models/bokmodel/bokmodel.dart';

abstract class details_repo {
  Future<Either<failure, Bokmodel>> featurdyoualsolike(key);
}
