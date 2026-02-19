import 'package:flutter/material.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/styles.dart';

class Body0fCardAskar extends StatelessWidget {
  const Body0fCardAskar({
    super.key,
    required this.nameAskar,
    required this.imageAskar,
  });
  final String nameAskar;
  final String imageAskar;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imageAskar),
        Text(
          nameAskar,
          style: Styles.textStyle20.copyWith(color: ColorManager.whiteColor),
        ),
      ],
    );
  }
}
