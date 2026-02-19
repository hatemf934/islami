import 'package:dartz/dartz.dart';
import 'package:islami/core/error/faliure.dart';
import 'package:islami/features/time/data/model/time_model.dart';

abstract class TimeRepo {
  Future<Either<Failure, TimeModel>> getTime();
  Future<Either<Failure, List<TimingModel>>> getTimings();
}
