import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami/core/utils/assets_manager.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/core/utils/styles.dart';

PageViewModel buildPageView({
  required String imageTitle,
  required String title,
  String? subTitle,
}) {
  return PageViewModel(
    useScrollView: false,
    titleWidget: Image.asset(AssetsManager.titleImage),
    bodyWidget: Column(
      children: [
        Image.asset(imageTitle, scale: 4.4),
        SizedBox(height: HieghtManager.h25),
        Text(
          title,
          style: Styles.textStyle25.copyWith(fontWeight: FontWeight.bold),
        ),
        subTitle != null
            ? SizedBox(height: HieghtManager.h30)
            : SizedBox.shrink(),
        subTitle != null
            ? Text(
                textAlign: TextAlign.center,
                subTitle,
                style: Styles.textStyle18,
              )
            : SizedBox.shrink(),
      ],
    ),
  );
}
