import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/features/quran/data/model/model_sura.dart';

part 'get_recently_state.dart';

class RecentSuraCubit extends Cubit<GetRecentlyState> {
  RecentSuraCubit() : super(GetRecentlyInitial());
  List<ModelSura> recentlyList = [];
  void addSura(ModelSura sura) {
    recentlyList.removeWhere((item) => item.numberOfSura == sura.numberOfSura);
    recentlyList.insert(0, sura);
    if (recentlyList.length > 5) {
      recentlyList.removeLast();
    }

    emit(GetRecently(modelSura: recentlyList));
  }
}
