// ignore_for_file: non_constant_identifier_names

part of 'featured_box_cubit_cubit.dart';

// ignore: must_be_immutable
sealed class FeaturedBoxCubitState extends Equatable {
  String message = 'message';
  @override
  List<Object> get props => [];
}

// ignore: must_be_immutable
final class FeaturedBoxCubitInitial extends FeaturedBoxCubitState {
  //FeaturedBoxCubitInitial(super.message);
}

// ignore: must_be_immutable
final class FeaturedBookloading extends FeaturedBoxCubitState {
  //FeaturedBookloading(super.message);
}

// ignore: must_be_immutable
final class FeaturedBookfalure extends FeaturedBoxCubitState {
  FeaturedBookfalure(this.message);
  @override
  String message;
}

// ignore: must_be_immutable
final class FeaturedBooksucces extends FeaturedBoxCubitState {
  @override
  // ignore: override_on_non_overriding_member
  List<dynamic>? Books = [];
  FeaturedBooksucces(this.Books);
}
