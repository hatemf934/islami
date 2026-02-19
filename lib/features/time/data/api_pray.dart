import 'package:dio/dio.dart';

class ApiPray {
  Dio dio = Dio();
  Future<Map<String, dynamic>> getPray() async {
    Response response = await dio.get(
      "https://api.aladhan.com/v1/timingsByCity/12-02-2026?city=cairo&country=egypt&method=8",
    );

    Map<String, dynamic> dataJson = response.data["data"];
    return dataJson;
  }
}
