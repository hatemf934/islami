part of 'radio_or_reciters_cubit.dart';

@immutable
sealed class RadioOrRecitersState {}

final class RadioOrRecitersInitial extends RadioOrRecitersState {}

final class RadioState extends RadioOrRecitersState {}

final class RecitersState extends RadioOrRecitersState {}
