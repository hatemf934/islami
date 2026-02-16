import 'package:flutter/material.dart';
import 'package:islami/core/utils/assets_manager.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/padding_manager.dart';
import 'package:islami/core/utils/styles.dart';

class DetailsHadethCard extends StatelessWidget {
  const DetailsHadethCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(PaddingManager.p8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(AssetsManager.leftCornerHadeth, scale: 1.2),
              Expanded(
                child: Text(
                  "hadeth 1",
                  textAlign: TextAlign.center,
                  style: Styles.textStyle20.copyWith(
                    color: ColorManager.globalBackgroundColor,
                  ),
                ),
              ),
              Image.asset(AssetsManager.rightCornerHadeth, scale: 1.2),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Text(
                textAlign: TextAlign.center,
                "قال رسوةل الله صلى الله عليه وسلم: من قال حين يصبح وحين يمسي: سبحان الله وبحمده، مئة مرة، حطت خطاياه وإن كانت مثل زبد البحر",
                style: Styles.textStyle18.copyWith(
                  color: ColorManager.globalBackgroundColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
