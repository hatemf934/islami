import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/styles.dart';
import 'package:islami/features/radio/data/model/parent_model.dart';
import 'package:islami/features/radio/presentation/manager/radio_or_reciters_cubit/radio_or_reciters_cubit.dart';
import 'package:islami/features/radio/presentation/views/widgets/icon_button_sound.dart';

class ButtonCardRadio extends StatelessWidget {
  final bool isButton;
  final bool isPlaying;
  final VoidCallback onPlayTap;
  final VoidCallback onVolumeTap;
  final ParentModel parentModel;
  const ButtonCardRadio({
    super.key,
    required this.isButton,
    required this.isPlaying,
    required this.onPlayTap,
    required this.onVolumeTap,
    required this.parentModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          parentModel.name,
          style: Styles.textStyle24.copyWith(
            color: ColorManager.globalBackgroundColor,
          ),
        ),
        BlocBuilder<RadioOrRecitersCubit, RadioOrRecitersState>(
          builder: (context, state) {
            return state is RadioState
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButtonSound(
                        onPressed: onPlayTap,
                        iconData: isButton ? Icons.play_arrow : Icons.pause,
                      ),
                      IconButtonSound(
                        onPressed: onVolumeTap,
                        iconData: isPlaying
                            ? Icons.volume_off
                            : Icons.volume_up,
                      ),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButtonSound(
                        onPressed: () {},
                        iconData: Icons.skip_previous,
                      ),
                      IconButtonSound(
                        onPressed: onPlayTap,
                        iconData: isButton ? Icons.play_arrow : Icons.pause,
                      ),
                      IconButtonSound(
                        onPressed: () {},
                        iconData: Icons.skip_next,
                      ),
                    ],
                  );
          },
        ),
      ],
    );
  }
}
