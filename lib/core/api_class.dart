import 'package:dio/dio.dart';

class ApiClass {
  Dio dio = Dio();

  Future<List<dynamic>> getSuraName({required String typeOfLang}) async {
    Response response = await dio.get(
      "https://www.mp3quran.net/api/v3/suwar?language=$typeOfLang",
    );
    List<dynamic> data = response.data["suwar"];
    return data;
  }
}
