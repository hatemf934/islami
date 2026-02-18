import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/features/radio/data/model/parent_model.dart';
import 'package:islami/features/radio/data/model/reciters_model.dart';
import 'package:islami/features/radio/presentation/manager/play_reciters_cubit/play_reciters_cubit.dart';
import 'package:islami/features/radio/presentation/views/widgets/icon_button_sound.dart';

class PlaySoundRecitersButtonChanges extends StatelessWidget {
  const PlaySoundRecitersButtonChanges({super.key, required this.parentModel});
  final ParentModel parentModel;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayRecitersCubit, PlayRecitersState>(
      builder: (context, state) {
        bool isThisPlaying =
            state is PlayReciters &&
            state.isPlaying &&
            parentModel.url == context.read<PlayRecitersCubit>().currentUrl;
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButtonSound(
              onPressed: () {
                BlocProvider.of<PlayRecitersCubit>(context).previous();
              },
              iconData: Icons.skip_previous,
            ),
            IconButtonSound(
              onPressed: () {
                if (isThisPlaying) {
                  BlocProvider.of<PlayRecitersCubit>(context).stopSound();
                } else {
                  if (parentModel is RecitersModel) {
                    final reciter = parentModel as RecitersModel;
                    BlocProvider.of<PlayRecitersCubit>(
                      context,
                    ).playPlaylist(reciter.allSurahsUrls, 0, parentModel.url);
                  }
                }
              },
              iconData: isThisPlaying ? Icons.pause : Icons.play_arrow,
            ),
            IconButtonSound(
              onPressed: () {
                BlocProvider.of<PlayRecitersCubit>(context).next();
              },
              iconData: Icons.skip_next,
            ),
          ],
        );
      },
    );
  }
}
