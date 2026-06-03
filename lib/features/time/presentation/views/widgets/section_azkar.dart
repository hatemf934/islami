import 'package:flutter/material.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/core/utils/styles.dart';
import 'package:islami/core/utils/text_manager.dart';
import 'package:islami/features/time/presentation/views/widgets/row_of_askar.dart';

class SectionAzkar extends StatelessWidget {
  const SectionAzkar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          TextManager.azkar,
          style: Styles.textStyle18.copyWith(color: ColorManager.whiteColor),
        ),
        SizedBox(height: HieghtManager.h20),
        RowOfAskar(),
        SizedBox(height: HieghtManager.h20),
      ],
    );
  }
}
