import 'package:flutter/material.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/core/utils/padding_manager.dart';
import 'package:islami/features/sepha/presentation/view/widgets/sepha_image_section.dart';
import 'package:islami/features/sepha/presentation/view/widgets/sepha_title_section.dart';

class SephaView extends StatelessWidget {
  const SephaView({super.key, required this.title, required this.textSepha});
  final String title;
  final String textSepha;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.transmentColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: PaddingManager.p32),
        child: Column(
          children: [
            SephaTitleSection(title: title),
            SizedBox(height: HieghtManager.h60),
            SephaImageSection(textSepha: textSepha),
          ],
        ),
      ),
    );
  }
}
