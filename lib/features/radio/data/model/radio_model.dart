import 'package:islami/features/radio/data/model/parent_model.dart';

class RadioModel extends ParentModel {
  @override
  final String name;
  @override
  final String url;

  RadioModel({required this.name, required this.url});
}
