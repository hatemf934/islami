import 'package:flutter/material.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/font_icon_manager.dart';

class IconButtonSound extends StatelessWidget {
  const IconButtonSound({
    super.key,
    required this.onPressed,
    required this.iconData,
  });
  final Function() onPressed;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        iconData,
        color: ColorManager.globalBackgroundColor,
        size: FontIconManager.icon30,
      ),
    );
  }
}
