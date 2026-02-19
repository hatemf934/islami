import 'package:flutter/material.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/font_size_manager.dart';
import 'package:islami/core/utils/styles.dart';
import 'package:islami/core/utils/text_manager.dart';
import 'package:islami/features/time/data/model/time_model.dart';

class ColumnTitleDayPray extends StatelessWidget {
  const ColumnTitleDayPray({super.key, required this.timeModel});
  final TimeModel timeModel;
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
          timeModel.day,
          style: Styles.textStyle20.copyWith(
            color: ColorManager.globalBackgroundColor,
          ),
        ),
      ],
    );
  }
}
