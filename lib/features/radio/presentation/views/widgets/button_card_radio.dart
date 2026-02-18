import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/styles.dart';
import 'package:islami/features/radio/data/model/parent_model.dart';
import 'package:islami/features/radio/presentation/manager/radio_or_reciters_cubit/radio_or_reciters_cubit.dart';
import 'package:islami/features/radio/presentation/views/widgets/paly_sound_reciters_button_changes.dart';
import 'package:islami/features/radio/presentation/views/widgets/play_sound_button_changes.dart';

class ButtonCardRadio extends StatelessWidget {
  final VoidCallback onPlayTap;
  final VoidCallback onVolumeTap;
  final ParentModel parentModel;
  const ButtonCardRadio({
    super.key,
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
                ? PlaySoundButtonChanges(parentModel: parentModel)
                : PlaySoundRecitersButtonChanges(parentModel: parentModel);
          },
        ),
      ],
    );
  }
}
