import 'package:flutter/material.dart';
import 'package:islami/core/utils/assets_manager.dart';

class ImagesHadethCard extends StatelessWidget {
  const ImagesHadethCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(AssetsManager.hadithCardBackGround),
        Spacer(),
        Image.asset(
          AssetsManager.mosqueImage,
          fit: BoxFit.fitWidth,
          width: double.infinity,
        ),
      ],
    );
  }
}
