import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/features/quran/data/model/model_sura.dart';
import 'package:islami/features/quran/data/repo/quran_repo_implement.dart';

part 'get_sura_state.dart';

class GetSuraCubit extends Cubit<GetSuraState> {
  GetSuraCubit() : super(GetSuraInitial());
  Future<void> getAllSuras() async {
    emit(GetSuraLoading());
    var result = await QuranRepoImplement().getAllSuraData();
    result.fold(
      (failre) {
        emit(GetSuraFailure(error: failre.message, iconData: failre.icon));
      },
      (suras) {
        emit(GetSuraSucsses(modelSura: suras));
      },
    );
  }
}
