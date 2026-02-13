import 'package:flutter/material.dart';
import 'package:islami/core/utils/assets_manager.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/core/utils/padding_manager.dart';
import 'package:islami/core/utils/raduis_manager.dart';
import 'package:islami/core/utils/styles.dart';
import 'package:islami/core/utils/width_manager.dart';

class CardSuraItem extends StatelessWidget {
  const CardSuraItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        height: HieghtManager.h170,
        width: WidthManager.w360,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(RaduisManager.raduis30),
          ),
          color: ColorManager.primayColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: PaddingManager.p15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("alfatha", style: Styles.textStyle24),
                    Text("الفاتحه", style: Styles.textStyle28),
                    Text(
                      "7 Verses",
                      style: Styles.textStyle18.copyWith(
                        color: ColorManager.globalBackgroundColor,
                      ),
                    ),
                  ],
                ),
              ),

              Image.asset(AssetsManager.mostRecent),
            ],
          ),
        ),
      ),
    );
  }
}
