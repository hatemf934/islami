import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/features/quran/data/model/model_sura.dart';
import 'package:meta/meta.dart';

part 'search_sura_state.dart';

class SearchSuraCubit extends Cubit<SearchSuraState> {
  SearchSuraCubit() : super(SearchSuraInitial());

  List<ModelSura> modelSura = [];
  void searchSura(String value, List<ModelSura> fullList) {
    if (modelSura.isEmpty) {
      modelSura = fullList;
    }
    if (value.isEmpty) {
      emit(SearchSuraInitial());
    } else {
      final result = modelSura.where((sura) {
        return sura.suraNameEng.toLowerCase().contains(value.toLowerCase()) ||
            sura.suraNameAr.contains(value);
      }).toList();
      if (result.isEmpty) {
        emit(SearchSuraNoResult());
      } else {
        emit(SearchSuraSearch(modelSura: result));
      }
    }
  }
}
