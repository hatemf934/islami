import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/core/utils/text_manager.dart';
import 'package:islami/features/radio/presentation/manager/radio_cubit/radio_cubit.dart';
import 'package:islami/features/radio/presentation/manager/radio_or_reciters_cubit/radio_or_reciters_cubit.dart';
import 'package:islami/features/radio/presentation/manager/reciters_cubit/reciters_cubit.dart';
import 'package:islami/features/radio/presentation/views/widgets/radio_elveted_button.dart';

class ButtonRadioSection extends StatefulWidget {
  const ButtonRadioSection({super.key});

  @override
  State<ButtonRadioSection> createState() => _ButtonRadioSectionState();
}

class _ButtonRadioSectionState extends State<ButtonRadioSection> {
  String selectedButton = TextManager.radioNav;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RadioElvetedButton(
              isPressed: selectedButton == TextManager.radioNav,
              onPressed: () {
                setState(() {
                  selectedButton = TextManager.radioNav;
                  BlocProvider.of<RadioOrRecitersCubit>(context).swapToRadio();
                  BlocProvider.of<RecitersCubit>(context).reset();
                  BlocProvider.of<RadioCubit>(context).getRadio();
                });
              },
              textTitle: TextManager.radioNav,
            ),
            RadioElvetedButton(
              isPressed: selectedButton == TextManager.recitersNav,
              onPressed: () {
                setState(() {
                  selectedButton = TextManager.recitersNav;
                  BlocProvider.of<RadioOrRecitersCubit>(
                    context,
                  ).swapToReciters();
                  BlocProvider.of<RadioCubit>(context).reset();
                  BlocProvider.of<RecitersCubit>(context).getReciters();
                });
              },
              textTitle: TextManager.recitersNav,
            ),
          ],
        ),
      ],
    );
  }
}
