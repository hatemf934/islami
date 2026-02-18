import 'package:audioplayers/audioplayers.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'play_sound_state.dart';

class PlaySoundCubit extends Cubit<PlaySoundState> {
  PlaySoundCubit() : super(PlaySoundInitial());

  final player = AudioPlayer();
  bool isMuted = false;
  Future<void> playSound(String url) async {
    await player.stop();
    await player.play(UrlSource(url));
    emit(PlaySound(url: url, isMuted: isMuted));
  }

  Future<void> stopSound() async {
    await player.stop();
    emit(PlaySoundInitial());
  }

  String? mutedUrl;
  Future<void> toggleMute(String url) async {
    if (mutedUrl == url) {
      mutedUrl = null;
      await player.setVolume(1.0);
    } else {
      mutedUrl = url;
      await player.setVolume(0.0);
    }
    bool isNowMuted = (mutedUrl == url);
    if (state is PlaySound) {
      emit(PlaySound(url: (state as PlaySound).url, isMuted: isNowMuted));
    }
  }

  @override
  Future<void> close() {
    player.dispose();
    return super.close();
  }
}
