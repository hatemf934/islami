import 'package:flutter/material.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/font_size_manager.dart';
import 'package:islami/core/utils/styles.dart';
import 'package:islami/core/utils/text_manager.dart';

class RowNextPray extends StatelessWidget {
  const RowNextPray({super.key, required this.nextPray});
  final String nextPray;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          TextManager.nextPray,
          style: Styles.textStyle18.copyWith(color: ColorManager.inkBlueColor),
        ),
        Text(
          nextPray,
          style: TextStyle(
            color: ColorManager.globalBackgroundColor,
            fontSize: FontSizeManager.font20,
          ),
        ),
      ],
    );
  }
}
