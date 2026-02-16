import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/error/faliure.dart';
import 'package:islami/features/hadeth/data/model/hadeth_model.dart';
import 'package:islami/features/hadeth/data/repo/hadeth_repo.dart';

class HadethRepoImplement extends HadethRepo {
  @override
  Future<Either<Failure, List<HadethModel>>> getHadeth() async {
    List<HadethModel> suras = [];
    try {
      for (var i = 1; i <= 50; i++) {
        String contentHadeth = await rootBundle.loadString(
          "assets/files/Hadeeth/h$i.txt",
        );
        String titleHadeth = await rootBundle.loadString(
          "assets/files/h_files_ordered/h$i.txt",
        );
        suras.add(
          HadethModel(
            numberOfHadeth: i,
            contentHadeth: contentHadeth,
            titleHadeth: titleHadeth,
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
