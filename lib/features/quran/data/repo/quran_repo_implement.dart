import 'package:dartz/dartz.dart';
import 'package:islami/core/error/faliure.dart';
import 'package:islami/features/quran/data/model/model_sura.dart';
import 'package:islami/features/quran/data/repo/quran_repo.dart';

class QuranRepoImplement extends QuranRepo {
  @override
  Future<Either<Faliure, List<ModelSura>>> getAllSuraData() {
    // TODO: implement getAllSuraData
    throw UnimplementedError();
  }
}
