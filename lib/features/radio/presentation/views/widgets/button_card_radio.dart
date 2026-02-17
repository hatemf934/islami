import 'package:flutter/material.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/styles.dart';
import 'package:islami/features/radio/presentation/views/widgets/icon_button_sound.dart';

class ButtonCardRadio extends StatelessWidget {
  final bool isButton;
  final bool isPlaying;
  final VoidCallback onPlayTap;
  final VoidCallback onVolumeTap;

  const ButtonCardRadio({
    super.key,
    required this.isButton,
    required this.isPlaying,
    required this.onPlayTap,
    required this.onVolumeTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "radio yasser",
          style: Styles.textStyle24.copyWith(
            color: ColorManager.globalBackgroundColor,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButtonSound(
              onPressed: onPlayTap,
              iconData: isButton ? Icons.play_arrow : Icons.pause,
            ),
            IconButtonSound(
              onPressed: onVolumeTap,
              iconData: isPlaying ? Icons.volume_off : Icons.volume_up,
            ),
          ],
        ),
      ],
    );
  }
}
