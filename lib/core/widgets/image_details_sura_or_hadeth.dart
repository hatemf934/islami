import 'package:flutter/material.dart';
import 'package:islami/core/utils/assets_manager.dart';
import 'package:islami/core/utils/styles.dart';

class ImageDetailsSuraOrhadeth extends StatelessWidget {
  const ImageDetailsSuraOrhadeth({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(AssetsManager.leftConner),
        Text(
          title,
          style: Styles.textStyle25.copyWith(fontWeight: FontWeight.w700),
        ),
        Image.asset(AssetsManager.rightConner),
      ],
    );
  }
}
