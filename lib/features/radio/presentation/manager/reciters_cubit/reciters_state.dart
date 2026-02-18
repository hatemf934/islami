part of 'reciters_cubit.dart';

@immutable
sealed class RecitersStateReciters {}

final class RecitersInitial extends RecitersStateReciters {}

final class RecitersLoading extends RecitersStateReciters {}

final class RecitersSucsses extends RecitersStateReciters {
  final List<RecitersModel> recitersList;

  RecitersSucsses({required this.recitersList});
}

final class RecitersFaliure extends RecitersStateReciters {
  final String error;
  final IconData iconData;
  RecitersFaliure({required this.error, required this.iconData});
}
