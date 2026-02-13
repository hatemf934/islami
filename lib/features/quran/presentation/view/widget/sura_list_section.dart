import 'package:flutter/material.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/styles.dart';
import 'package:islami/core/utils/text_manager.dart';
import 'package:islami/features/quran/presentation/view/widget/list_view_sura.dart';

class SuraListSection extends StatelessWidget {
  const SuraListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          TextManager.suraList,
          style: Styles.textStyle16.copyWith(color: ColorManager.whiteColor),
        ),
        Expanded(child: ListViewSura()),
      ],
    );
  }
}
