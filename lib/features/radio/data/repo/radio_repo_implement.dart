import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:islami/core/error/faliure.dart';
import 'package:islami/features/radio/data/model/radio_model.dart';
import 'package:islami/features/radio/data/model/reciters_model.dart';
import 'package:islami/features/radio/data/repo/radio_repo.dart';

class RadioRepoImplement implements RadioRepo {
  final Dio dio = Dio();

  @override
  Future<Either<Failure, List<RadioModel>>> getAllRadio() async {
    try {
      Response response = await dio.get(
        "https://www.mp3quran.net/api/v3/radios?language=ar",
      );
      List<dynamic> dataRadio = response.data["radios"];
      List<RadioModel> radioList = [];

      for (var radio in dataRadio) {
        radioList.add(RadioModel(name: radio["name"], url: radio["url"]));
      }

      return Right(radioList);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } on TypeError catch (e) {
      return Left(GeneralFailure.fromException(e));
    } on FormatException catch (e) {
      return Left(GeneralFailure.fromException(e));
    } catch (e) {
      return Left(GeneralFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, List<RecitersModel>>> getAllReciters() async {
    try {
      Response response = await dio.get(
        "https://www.mp3quran.net/api/v3/reciters?language=ar",
      );

      List<dynamic> dataRadio = response.data["reciters"];
      List<RecitersModel> reciterList = [];

      for (var reciter in dataRadio) {
        if (reciter['moshaf'] != null && reciter['moshaf'].isNotEmpty) {
          String serverUrl = reciter['moshaf'][0]['server'];
          String surahListStr = reciter['moshaf'][0]['surah_list'];

          List<String> surahNumbers = surahListStr.split(',');
          List<String> allSurahsUrls = [];

          for (var number in surahNumbers) {
            String formattedNumber = number.padLeft(3, '0');
            allSurahsUrls.add("$serverUrl$formattedNumber.mp3");
          }

          reciterList.add(
            RecitersModel(
              name: reciter["name"],
              url: serverUrl,
              allSurahsUrls: allSurahsUrls,
            ),
          );
        }
      }

      return Right(reciterList);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } on TypeError catch (e) {
      return Left(GeneralFailure.fromException(e));
    } on FormatException catch (e) {
      return Left(GeneralFailure.fromException(e));
    } catch (e) {
      return Left(GeneralFailure.fromException(e));
    }
  }
}
