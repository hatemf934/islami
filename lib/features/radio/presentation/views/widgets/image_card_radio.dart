import 'package:flutter/material.dart';
import 'package:islami/core/utils/assets_manager.dart';

class ImageCardRadio extends StatelessWidget {
  const ImageCardRadio({super.key, required this.isButton});
  final bool isButton;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Image.asset(
          isButton ? AssetsManager.maskRadio : AssetsManager.playingRadio,
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
      ],
    );
  }
}
