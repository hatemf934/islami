import 'package:dartz/dartz.dart';
import 'package:islami/core/error/faliure.dart';
import 'package:islami/features/radio/data/model/radio_model.dart';
import 'package:islami/features/radio/data/model/reciters_model.dart';
import 'package:islami/features/radio/data/repo/radio_repo.dart';

class RadioRepoImplement implements RadioRepo {
  @override
  Future<Either<Failure, List<RadioModel>>> getAllRadio() {
    // TODO: implement getAllRadio
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<RecitersModel>>> getAllReciters() {
    // TODO: implement getAllReciters
    throw UnimplementedError();
  }
}
