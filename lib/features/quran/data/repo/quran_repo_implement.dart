import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/api_class.dart';
import 'package:islami/core/error/faliure.dart';
import 'package:islami/features/quran/data/model/model_sura.dart';
import 'package:islami/features/quran/data/repo/quran_repo.dart';

class QuranRepoImplement extends QuranRepo {
  @override
  Future<Either<Failure, List<ModelSura>>> getAllSuraData() async {
    try {
      List<dynamic> getSuraAr = await ApiClass().getSuraName(typeOfLang: 'ar');
      List<dynamic> getSuraEng = await ApiClass().getSuraName(
        typeOfLang: 'eng',
      );

      List<ModelSura> suras = [];

      for (int i = 1; i < 114; i++) {
        String count = (await rootBundle.loadString(
          "assets/files/quran_surahs/$i.txt",
        )).trim();
        String content = await rootBundle.loadString(
          "assets/files/Suras/$i.txt",
        );

        suras.add(
          ModelSura(
            numberOfSura: i,
            countAyat: count,
            suraNameEng: getSuraEng[i - 1]["name"],
            suraNameAr: getSuraAr[i - 1]["name"],
            suraContent: content,
          ),
        );
      }
      return right(suras);
    } catch (e) {
      if (e is DioException) {
        left(ServerFailure.fromDioException(e));
      }
      return Left(ServerFailure(Icons.error, message: e.toString()));
    }
  }
}
