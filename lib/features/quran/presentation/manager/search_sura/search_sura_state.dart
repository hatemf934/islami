part of 'search_sura_cubit.dart';

@immutable
sealed class SearchSuraState {}

final class SearchSuraInitial extends SearchSuraState {}

final class SearchSuraNoResult extends SearchSuraState {}

final class SearchSuraSearch extends SearchSuraState {
  final List<ModelSura> modelSura;

  SearchSuraSearch({required this.modelSura});
}
