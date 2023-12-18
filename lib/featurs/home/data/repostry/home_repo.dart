 import 'package:dartz/dartz.dart';

import '../../../../core/consts/failure.dart';
import '../models/bokmodel/bokmodel.dart';
 
 
 
 abstract class home_repo {
 Future<Either<failure,Bokmodel>>  fetchBooksPestsaler();
  Future<Either<failure,Bokmodel>> fetchBooksfeatured();
}
