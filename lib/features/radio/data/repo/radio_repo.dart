import 'package:dartz/dartz.dart';
import 'package:islami/core/error/faliure.dart';
import 'package:islami/features/radio/data/model/radio_model.dart';
import 'package:islami/features/radio/data/model/reciters_model.dart';

abstract class RadioRepo {
  Future<Either<Failure, List<RadioModel>>> getAllRadio();
  Future<Either<Failure, List<RecitersModel>>> getAllReciters();
}
