part of 'play_sound_cubit.dart';

@immutable
sealed class PlaySoundState {}

final class PlaySoundInitial extends PlaySoundState {}

final class PlaySound extends PlaySoundState {
  final String url;
  final bool isMuted;

  PlaySound({required this.url, required this.isMuted});
}

final class StopSound extends PlaySoundState {}
