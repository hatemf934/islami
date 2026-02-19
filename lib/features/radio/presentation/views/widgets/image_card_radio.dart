import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/core/utils/assets_manager.dart';
import 'package:islami/features/radio/data/model/parent_model.dart';
import 'package:islami/features/radio/presentation/manager/play_reciters_cubit/play_reciters_cubit.dart';
import 'package:islami/features/radio/presentation/manager/play_sound_cubit/play_sound_cubit.dart';

class ImageCardRadio extends StatefulWidget {
  const ImageCardRadio({super.key, required this.parentModel});

  final ParentModel parentModel;

  @override
  State<ImageCardRadio> createState() => _ImageCardRadioState();
}

class _ImageCardRadioState extends State<ImageCardRadio>
    with SingleTickerProviderStateMixin {
  late Animation<Offset> slidingAnimation;
  late AnimationController animationController;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 0.05), end: Offset.zero).animate(
          CurvedAnimation(parent: animationController, curve: Curves.easeInOut),
        );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

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
                        radioState.url == widget.parentModel.url) ||
                    (recitersState is PlayReciters &&
                        recitersState.isPlaying &&
                        widget.parentModel.url ==
                            context.read<PlayRecitersCubit>().currentUrl);

                if (isThisPlaying) {
                  animationController.repeat(reverse: true);
                } else {
                  animationController.stop();
                }
                return SlideTransition(
                  position: slidingAnimation,
                  child: Image.asset(
                    isThisPlaying
                        ? AssetsManager.playingRadio
                        : AssetsManager.maskRadio,
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                );
              },
            );
          },
        ),
      ],
    );
  }
}
