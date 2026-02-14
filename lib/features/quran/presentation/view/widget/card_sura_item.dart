import 'package:flutter/material.dart';
import 'package:islami/core/utils/assets_manager.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/core/utils/padding_manager.dart';
import 'package:islami/core/utils/raduis_manager.dart';
import 'package:islami/core/utils/styles.dart';
import 'package:islami/core/utils/text_manager.dart';
import 'package:islami/core/utils/width_manager.dart';
import 'package:islami/core/widgets/details_content.dart';
import 'package:islami/features/quran/data/model/model_sura.dart';

class CardSuraItem extends StatelessWidget {
  const CardSuraItem({super.key, required this.modelSura});
  final ModelSura modelSura;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsContent(
              suraDetails: modelSura.suraContent,
              title: modelSura.suraNameAr,
              tilteAppBar: modelSura.suraNameEng,
            ),
          ),
        );
      },
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
                    Text(modelSura.suraNameEng, style: Styles.textStyle24),
                    Text(modelSura.suraNameAr, style: Styles.textStyle28),
                    Text(
                      "${modelSura.countAyat} ${TextManager.verses}",
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
