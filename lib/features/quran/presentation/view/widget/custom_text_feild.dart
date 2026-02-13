import 'package:flutter/material.dart';
import 'package:islami/core/utils/assets_manager.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/padding_manager.dart';
import 'package:islami/core/utils/raduis_manager.dart';
import 'package:islami/core/utils/styles.dart';
import 'package:islami/core/utils/text_manager.dart';
import 'package:islami/core/utils/width_manager.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: ColorManager.whiteColor),
      cursorColor: ColorManager.primayColor,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: PaddingManager.p15),
        prefixIcon: Image.asset(
          scale: 1.5,
          AssetsManager.quranIcon,
          color: ColorManager.primayColor,
        ),
        hintText: TextManager.suraName,
        hintStyle: Styles.textStyle18.copyWith(
          color: ColorManager.secondryColor,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: WidthManager.w1,
            color: ColorManager.primayColor,
          ),
          borderRadius: BorderRadius.circular(RaduisManager.raduis8),
        ),
      ),
    );
  }
}
