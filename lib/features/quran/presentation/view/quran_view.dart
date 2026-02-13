import 'package:flutter/material.dart';
import 'package:islami/core/utils/assets_manager.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/core/utils/padding_manager.dart';
import 'package:islami/features/quran/presentation/view/widget/custom_text_feild.dart';
import 'package:islami/features/quran/presentation/view/widget/most_recently_section.dart';
import 'package:islami/features/quran/presentation/view/widget/sura_list_section.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.transmentColor,
      body: Padding(
        padding: EdgeInsets.all(PaddingManager.p15),
        child: Center(
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  AssetsManager.titleImage,
                  height: HieghtManager.h170,
                ),
              ),
              CustomTextFiled(),
              SizedBox(height: HieghtManager.h15),
              MostRecentlySection(),
              SizedBox(height: HieghtManager.h15),
              Expanded(child: SuraListSection()),
            ],
          ),
        ),
      ),
    );
  }
}
