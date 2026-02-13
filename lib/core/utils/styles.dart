import 'package:flutter/material.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/font_size_manager.dart';

abstract class Styles {
  static TextStyle textStyle18 = TextStyle(
    color: ColorManager.primayColor,
    fontSize: FontSizeManager.font18,
  );
  static TextStyle textStyle16 = TextStyle(
    color: ColorManager.primayColor,
    fontSize: FontSizeManager.font16,
    fontWeight: FontWeight.bold,
  );
  static TextStyle textStyle25 = TextStyle(
    color: ColorManager.primayColor,
    fontSize: FontSizeManager.font25,
  );
  static TextStyle textStyle24 = TextStyle(
    fontSize: FontSizeManager.font24,
    fontWeight: FontWeight.bold,
  );
  static TextStyle textStyle28 = TextStyle(
    color: ColorManager.globalBackgroundColor,
    fontSize: FontSizeManager.font28,
    fontWeight: FontWeight.bold,
  );
  static TextStyle textStyle30 = TextStyle(
    color: ColorManager.whiteColor,
    fontSize: FontSizeManager.font30,
  );
}
