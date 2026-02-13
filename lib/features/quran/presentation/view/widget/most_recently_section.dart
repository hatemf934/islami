import 'package:flutter/material.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/core/utils/styles.dart';
import 'package:islami/core/utils/text_manager.dart';
import 'package:islami/features/quran/presentation/view/widget/card_sura_list_view.dart';

class MostRecentlySection extends StatelessWidget {
  const MostRecentlySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          TextManager.mostRecently,
          style: Styles.textStyle16.copyWith(color: ColorManager.secondryColor),
        ),
        SizedBox(height: HieghtManager.h20),
        CardSuraListView(),
      ],
    );
  }
}
