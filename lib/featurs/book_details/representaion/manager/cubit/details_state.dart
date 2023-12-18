part of 'details_cubit.dart';

abstract class DetailsState {
  DetailsState();
  String? message;

  List<Item>? items;
}

final class DetailsInitial extends DetailsState {}

final class Detailsloading extends DetailsState {}

final class Detailsfalier extends DetailsState {
  Detailsfalier(this.message);
  @override
  String? message;
}

final class Detailssuccess extends DetailsState {
  Detailssuccess(this.items);
  @override
  List<Item>? items;
}
