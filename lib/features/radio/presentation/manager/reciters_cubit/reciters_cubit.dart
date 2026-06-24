import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/core/error/faliure.dart';
import 'package:islami/features/radio/data/model/reciters_model.dart';
import 'package:islami/features/radio/data/repo/radio_repo_implement.dart';

part 'reciters_state.dart';

class RecitersCubit extends Cubit<RecitersStateReciters> {
  RecitersCubit() : super(RecitersInitial());
  void getReciters() async {
    emit(RecitersLoading());
    var result = await RadioRepoImplement().getAllReciters();
    result.fold(
      (fauilre) {
        emit(RecitersFaliure(failure: fauilre));
      },
      (listReciters) {
        emit(RecitersSucsses(recitersList: listReciters));
      },
    );
  }

  void reset() {
    emit(RecitersInitial());
  }
}
