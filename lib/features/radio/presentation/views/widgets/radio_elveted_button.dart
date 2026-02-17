import 'package:flutter/material.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/font_size_manager.dart';
import 'package:islami/core/utils/padding_manager.dart';
import 'package:islami/core/utils/raduis_manager.dart';

class RadioElvetedButton extends StatelessWidget {
  const RadioElvetedButton({
    super.key,
    required this.textTitle,
    required this.onPressed,
    required this.isPressed,
  });
  final String textTitle;
  final Function() onPressed;
  final bool isPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: PaddingManager.p75),
        foregroundColor: isPressed
            ? ColorManager.globalBackgroundColor
            : ColorManager.whiteColor,
        backgroundColor: isPressed
            ? ColorManager.primayColor
            : ColorManager.transmentColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(RaduisManager.raduis25),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        textTitle,
        style: TextStyle(fontSize: FontSizeManager.font16),
      ),
    );
  }
}
