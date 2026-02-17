import 'package:islami/features/radio/data/model/parent_model.dart';

class RecitersModel extends ParentModel {
  @override
  final String name;
  @override
  final String url;
  final List<String> allSurahsUrls;
  RecitersModel({
    required this.name,
    required this.url,
    required this.allSurahsUrls,
  });
}
