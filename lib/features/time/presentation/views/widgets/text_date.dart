import 'package:flutter/material.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/styles.dart';

class TextDate extends StatelessWidget {
  const TextDate({super.key, required this.textDate});
  final String textDate;
  @override
  Widget build(BuildContext context) {
    return Text(
      textDate,
      style: Styles.textStyle18.copyWith(
        color: ColorManager.whiteColor,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
