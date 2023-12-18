// ignore_for_file: override_on_non_overriding_member

part of 'best_saler_cubit.dart';

// ignore: must_be_immutable
sealed class BestSalerState extends Equatable {
  BestSalerState();
  String message = "message";
  @override
  List<Item> get props => [];
}

// ignore: must_be_immutable
final class FeaturedBoxCubitInitial extends BestSalerState {}

// ignore: must_be_immutable
final class FeaturedBookloading extends BestSalerState {}

// ignore: must_be_immutable
final class FeaturedBookfalure extends BestSalerState {
  FeaturedBookfalure(this.message);
  @override
  final String message;
}

// ignore: must_be_immutable
final class FeaturedBooksucces extends BestSalerState {
  @override
  List<Item>? Books = [];
  FeaturedBooksucces(this.Books);
}
