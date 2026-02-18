part of 'radio_cubit.dart';

@immutable
sealed class RadioStateRadio {}

final class RadioInitial extends RadioStateRadio {}

final class RadioLoading extends RadioStateRadio {}

final class RadioSucsses extends RadioStateRadio {
  final List<RadioModel> radioList;

  RadioSucsses({required this.radioList});
}

final class RadioFaliure extends RadioStateRadio {
  final String error;
  final IconData iconData;
  RadioFaliure({required this.error, required this.iconData});
}
