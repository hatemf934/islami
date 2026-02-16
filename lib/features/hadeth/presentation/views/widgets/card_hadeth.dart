import 'package:flutter/material.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/core/utils/raduis_manager.dart';
import 'package:islami/core/utils/width_manager.dart';
import 'package:islami/features/hadeth/presentation/views/widgets/details_card_hadeth.dart';
import 'package:islami/features/hadeth/presentation/views/widgets/image_hadeth_card.dart';

class CardHadeth extends StatelessWidget {
  const CardHadeth({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: WidthManager.w360,
        height: HieghtManager.h650,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(RaduisManager.raduis25),
          color: ColorManager.primayColor,
        ),
        child: Stack(children: [ImagesHadethCard(), DetailsHadethCard()]),
      ),
    );
  }
}
