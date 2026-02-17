import 'package:flutter/material.dart';
import 'package:islami/core/utils/assets_manager.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/font_size_manager.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/core/utils/styles.dart';

class SephaImageSection extends StatelessWidget {
  const SephaImageSection({super.key, required this.textSepha});
  final String textSepha;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          children: [
            Image.asset(AssetsManager.sephaHead, scale: 4),
            Image.asset(AssetsManager.sephaBody),
          ],
        ),

        Column(
          children: [
            SizedBox(height: HieghtManager.h60),
            TextButton(
              onPressed: () {},
              child: Text(textSepha, style: Styles.textStyle45),
            ),
            Text("0", style: Styles.textStyle45),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.restart_alt,
                color: ColorManager.primayColor,
                size: FontSizeManager.font45,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
