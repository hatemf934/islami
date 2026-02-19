import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:islami/core/error/faliure.dart';
import 'package:islami/features/time/data/api_pray.dart';
import 'package:islami/features/time/data/model/time_model.dart';
import 'package:islami/features/time/data/repo/time_repo.dart';

class TimeRepoImplement implements TimeRepo {
  @override
  Future<Either<Failure, TimeModel>> getTime() async {
    try {
      Map<String, dynamic> dataJson = await ApiPray().getPray();
      return right(TimeModel.fromjson(dataJson));
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      } else {
        return Left(ServerFailure(Icons.error, message: e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<TimingModel>>> getTimings() async {
    try {
      Map<String, dynamic> dataJson = await ApiPray().getPray();
      List<TimingModel> timingModel = [];
      timingModel.add(TimingModel.fromjson(dataJson["timings"]));
      return right(timingModel);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      } else {
        return Left(ServerFailure(Icons.error, message: e.toString()));
      }
    }
  }
}
