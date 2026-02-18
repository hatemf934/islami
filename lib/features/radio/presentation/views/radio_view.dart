import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/core/utils/assets_manager.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/features/radio/presentation/manager/play_reciters_cubit/play_reciters_cubit.dart';
import 'package:islami/features/radio/presentation/manager/play_sound_cubit/play_sound_cubit.dart';
import 'package:islami/features/radio/presentation/manager/radio_cubit/radio_cubit.dart';
import 'package:islami/features/radio/presentation/manager/radio_or_reciters_cubit/radio_or_reciters_cubit.dart';
import 'package:islami/features/radio/presentation/manager/reciters_cubit/reciters_cubit.dart';
import 'package:islami/features/radio/presentation/views/widgets/button_radio_section.dart';
import 'package:islami/features/radio/presentation/views/widgets/list_view_radio_section.dart';

class RadioView extends StatefulWidget {
  const RadioView({super.key});

  @override
  State<RadioView> createState() => _RadioViewState();
}

class _RadioViewState extends State<RadioView> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RadioOrRecitersCubit()..swapToRadio(),
        ),
        BlocProvider(create: (context) => RadioCubit()..getRadio()),
        BlocProvider(create: (context) => RecitersCubit()),
        BlocProvider(create: (context) => PlaySoundCubit()),
        BlocProvider(create: (context) => PlayRecitersCubit()),
      ],
      child: Scaffold(
        backgroundColor: ColorManager.transmentColor,
        body: Column(
          children: [
            Center(
              child: Image.asset(
                AssetsManager.titleImage,
                height: HieghtManager.h170,
              ),
            ),
            ButtonRadioSection(),
            Expanded(child: ListViewRadioSection()),
          ],
        ),
      ),
    );
  }
}
