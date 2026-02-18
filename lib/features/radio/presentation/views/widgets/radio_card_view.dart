import 'package:flutter/material.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/core/utils/padding_manager.dart';
import 'package:islami/core/utils/raduis_manager.dart';
import 'package:islami/features/radio/data/model/parent_model.dart';
import 'package:islami/features/radio/presentation/views/widgets/button_card_radio.dart';
import 'package:islami/features/radio/presentation/views/widgets/image_card_radio.dart';

class RadioCardView extends StatefulWidget {
  const RadioCardView({super.key, required this.parentModel});
  final ParentModel parentModel;
  @override
  State<RadioCardView> createState() => _RadioCardViewState();
}

class _RadioCardViewState extends State<RadioCardView> {
  bool isPlaying = false;
  bool isButton = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: PaddingManager.p24),
      child: Container(
        height: HieghtManager.h140,
        decoration: BoxDecoration(
          color: ColorManager.primayColor,
          borderRadius: BorderRadius.circular(RaduisManager.raduis25),
        ),
        child: Stack(
          children: [
            ImageCardRadio(parentModel: widget.parentModel),
            ButtonCardRadio(
              parentModel: widget.parentModel,
              onPlayTap: () {
                setState(() {
                  isButton = !isButton;
                });
              },
              onVolumeTap: () {
                setState(() {
                  isPlaying = !isPlaying;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
