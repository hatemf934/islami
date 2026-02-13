import 'package:flutter/material.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/font_size_manager.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/core/utils/styles.dart';

class CustomFailue extends StatelessWidget {
  const CustomFailue({
    super.key,
    required this.iconData,
    required this.messageError,
  });
  final IconData iconData;
  final String messageError;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: FontSizeManager.font70,
          color: ColorManager.redAccentColor,
        ),
        SizedBox(height: HieghtManager.h15),
        Text(
          messageError,
          textAlign: TextAlign.center,
          style: Styles.textStyle16.copyWith(
            color: ColorManager.redAccentColor,
          ),
        ),
      ],
    );
  }
}
