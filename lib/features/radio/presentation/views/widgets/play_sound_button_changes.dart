import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/features/radio/data/model/parent_model.dart';
import 'package:islami/features/radio/presentation/manager/play_sound_cubit/play_sound_cubit.dart';
import 'package:islami/features/radio/presentation/views/widgets/icon_button_sound.dart';

class PlaySoundButtonChanges extends StatelessWidget {
  const PlaySoundButtonChanges({super.key, required this.parentModel});
  final ParentModel parentModel;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlaySoundCubit, PlaySoundState>(
      builder: (context, state) {
        bool isThisPlaying = state is PlaySound && state.url == parentModel.url;
        bool currentIsMuted = false;
        if (state is PlaySound) {
          currentIsMuted = (state.url == parentModel.url) && state.isMuted;
        }
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButtonSound(
              onPressed: () {
                if (isThisPlaying) {
                  BlocProvider.of<PlaySoundCubit>(context).stopSound();
                } else {
                  BlocProvider.of<PlaySoundCubit>(
                    context,
                  ).playSound(parentModel.url);
                }
              },
              iconData: isThisPlaying ? Icons.pause : Icons.play_arrow,
            ),
            IconButtonSound(
              onPressed: () {
                BlocProvider.of<PlaySoundCubit>(
                  context,
                ).toggleMute(parentModel.url);
              },
              iconData: currentIsMuted ? Icons.volume_off : Icons.volume_up,
            ),
          ],
        );
      },
    );
  }
}
