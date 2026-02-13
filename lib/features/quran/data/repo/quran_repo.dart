import 'package:dartz/dartz.dart';
import 'package:islami/core/error/faliure.dart';
import 'package:islami/features/quran/data/model/model_sura.dart';

abstract class QuranRepo {
  Future<Either<Faliure, List<ModelSura>>> getAllSuraData();
}
