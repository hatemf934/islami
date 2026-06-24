import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/core/error/faliure.dart';
import 'package:islami/features/hadeth/data/model/hadeth_model.dart';
import 'package:islami/features/hadeth/data/repo/hadeth_repo_implement.dart';
import 'package:meta/meta.dart';

part 'get_hadeth_state.dart';

class GetHadethCubit extends Cubit<GetHadethState> {
  GetHadethCubit() : super(GetHadethInitial());

  void gethadeth() async {
    emit(GetHadethLoading());
    var result = await HadethRepoImplement().getHadeth();
    result.fold(
      (failure) => emit(GetHadethFauilre(failure: failure)),
      (hadethModel) => emit(GetHadethSucsses(hadethModel: hadethModel)),
    );
  }
}
