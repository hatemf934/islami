import 'package:flutter/material.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/font_size_manager.dart';
import 'package:islami/core/utils/styles.dart';
import 'package:islami/core/utils/text_manager.dart';

class ColumnTitleDayPray extends StatelessWidget {
  const ColumnTitleDayPray({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          TextManager.prayTime,
          style: TextStyle(
            color: ColorManager.inkBlueColor,
            fontSize: FontSizeManager.font24,
          ),
        ),
        Text(
          "day",
          style: Styles.textStyle20.copyWith(
            color: ColorManager.globalBackgroundColor,
          ),
        ),
      ],
    );
  }
}
