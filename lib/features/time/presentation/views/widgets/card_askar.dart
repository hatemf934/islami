import 'package:flutter/material.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/core/utils/raduis_manager.dart';
import 'package:islami/core/utils/width_manager.dart';
import 'package:islami/features/time/presentation/views/widgets/body_of_card_askar.dart';

class CardAskar extends StatelessWidget {
  const CardAskar({
    super.key,
    required this.nameAskar,
    required this.imageAskar,
    required this.onTap,
  });
  final String nameAskar;
  final String imageAskar;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: WidthManager.w180,
        height: HieghtManager.h260,
        decoration: BoxDecoration(
          color: ColorManager.transmentColor,
          borderRadius: BorderRadius.circular(RaduisManager.raduis20),
          border: Border.all(
            color: ColorManager.primayColor,
            width: WidthManager.w1,
          ),
        ),

        child: Body0fCardAskar(imageAskar: imageAskar, nameAskar: nameAskar),
      ),
    );
  }
}
