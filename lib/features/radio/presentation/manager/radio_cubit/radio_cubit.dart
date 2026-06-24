import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/core/error/faliure.dart';
import 'package:islami/features/radio/data/model/radio_model.dart';
import 'package:islami/features/radio/data/repo/radio_repo_implement.dart';

part 'radio_state.dart';

class RadioCubit extends Cubit<RadioStateRadio> {
  RadioCubit() : super(RadioInitial());

  void getRadio() async {
    emit(RadioLoading());
    var result = await RadioRepoImplement().getAllRadio();
    result.fold(
      (fauilre) {
        emit(RadioFaliure(failure: fauilre));
      },
      (listRadio) {
        emit(RadioSucsses(radioList: listRadio));
      },
    );
  }

  void reset() {
    emit(RadioInitial());
  }
}
