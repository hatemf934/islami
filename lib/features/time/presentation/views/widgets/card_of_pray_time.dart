import 'package:flutter/material.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/core/utils/raduis_manager.dart';
import 'package:islami/core/utils/width_manager.dart';
import 'package:islami/features/time/presentation/views/widgets/body_of_card_pray_time.dart';

class CardOfPrayTime extends StatelessWidget {
  const CardOfPrayTime({super.key, required this.prayName});

  final String prayName;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: HieghtManager.h120,
      width: WidthManager.w110,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            ColorManager.globalBackgroundColor,
            ColorManager.primayColor,
          ],
        ),
        borderRadius: BorderRadius.circular(RaduisManager.raduis25),
      ),
      child: BodyOfCardPrayTime(prayName: prayName),
    );
  }
}
