part of 'play_reciters_cubit.dart';

@immutable
sealed class PlayRecitersState {}

final class PlayRecitersInitial extends PlayRecitersState {}

final class PlayReciters extends PlayRecitersState {
  final int currentIndex;
  final bool isPlaying;

  PlayReciters({required this.currentIndex, required this.isPlaying});
}
