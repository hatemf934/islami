part of 'get_hadeth_cubit.dart';

@immutable
sealed class GetHadethState {}

final class GetHadethInitial extends GetHadethState {}

final class GetHadethSucsses extends GetHadethState {
  final List<HadethModel> hadethModel;

  GetHadethSucsses({required this.hadethModel});
}

final class GetHadethLoading extends GetHadethState {}

final class GetHadethFauilre extends GetHadethState {
  final String error;
  final IconData iconData;

  GetHadethFauilre({required this.error, required this.iconData});
}
