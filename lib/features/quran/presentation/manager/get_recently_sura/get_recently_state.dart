part of 'get_recently_cubit.dart';

@immutable
sealed class GetRecentlyState {}

final class GetRecentlyInitial extends GetRecentlyState {}

final class GetRecently extends GetRecentlyState {
  final List<ModelSura> modelSura;

  GetRecently({required this.modelSura});
}
