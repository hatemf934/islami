import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/core/utils/assets_manager.dart';
import 'package:islami/features/radio/data/model/parent_model.dart';
import 'package:islami/features/radio/presentation/manager/play_reciters_cubit/play_reciters_cubit.dart';
import 'package:islami/features/radio/presentation/manager/play_sound_cubit/play_sound_cubit.dart';

class ImageCardRadio extends StatelessWidget {
  const ImageCardRadio({super.key, required this.parentModel});

  final ParentModel parentModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        BlocBuilder<PlayRecitersCubit, PlayRecitersState>(
          builder: (context, recitersState) {
            return BlocBuilder<PlaySoundCubit, PlaySoundState>(
              builder: (context, radioState) {
                bool isThisPlaying =
                    (radioState is PlaySound &&
                        radioState.url == parentModel.url) ||
                    (recitersState is PlayReciters &&
                        recitersState.isPlaying &&
                        parentModel.url ==
                            context.read<PlayRecitersCubit>().currentUrl);
                return Image.asset(
                  isThisPlaying
                      ? AssetsManager.playingRadio
                      : AssetsManager.maskRadio,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                );
              },
            );
          },
        ),
      ],
    );
  }
}
