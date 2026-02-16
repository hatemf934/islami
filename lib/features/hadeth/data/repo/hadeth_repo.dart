import 'package:dartz/dartz.dart';
import 'package:islami/core/error/faliure.dart';
import 'package:islami/features/hadeth/data/model/hadeth_model.dart';

abstract class HadethRepo {
  Future<Either<Failure, List<HadethModel>>> getHadeth();
}
