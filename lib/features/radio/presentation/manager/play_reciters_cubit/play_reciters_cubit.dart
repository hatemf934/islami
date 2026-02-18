import 'package:bloc/bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:meta/meta.dart';

part 'play_reciters_state.dart';

class PlayRecitersCubit extends Cubit<PlayRecitersState> {
  PlayRecitersCubit() : super(PlayRecitersInitial());

  final player = AudioPlayer();
  String? currentUrl;
  Future<void> playPlaylist(
    List<String> urls,
    int initialIndex,
    String url,
  ) async {
    final playlist = ConcatenatingAudioSource(
      children: urls.map((url) => AudioSource.uri(Uri.parse(url))).toList(),
    );
    currentUrl = url;
    await player.setAudioSource(playlist, initialIndex: initialIndex);
    player.play();
    player.currentIndexStream.listen((index) {
      if (index != null) {
        emit(PlayReciters(currentIndex: index, isPlaying: true));
      }
    });
  }

  Future<void> stopSound() async {
    await player.stop();
    emit(PlayRecitersInitial());
  }

  void next() => player.seekToNext();
  void previous() => player.seekToPrevious();

  @override
  Future<void> close() {
    player.dispose();
    return super.close();
  }
}
