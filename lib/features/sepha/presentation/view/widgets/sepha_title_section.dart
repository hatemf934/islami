import 'package:flutter/material.dart';
import 'package:islami/core/utils/assets_manager.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/core/utils/styles.dart';

class SephaTitleSection extends StatelessWidget {
  const SephaTitleSection({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Image.asset(
            AssetsManager.titleImage,
            height: HieghtManager.h170,
          ),
        ),
        Text(textAlign: TextAlign.center, title, style: Styles.textStyle45),
      ],
    );
  }
}
