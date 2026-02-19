import 'package:flutter/material.dart';
import 'package:islami/core/utils/assets_manager.dart';
import 'package:islami/core/utils/text_manager.dart';
import 'package:islami/features/time/presentation/views/widgets/future_builder_nav.dart';

class RowOfAskar extends StatelessWidget {
  const RowOfAskar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FutureBuilderNav(
          azkarPath: AssetsManager.eveningAzkarPath,
          imageAzkar: AssetsManager.eveningAzkarIcon,
          titleAzkarAr: TextManager.eveningAzkarAr,
          titleAzkarEn: TextManager.eveningAzkarEn,
        ),

        FutureBuilderNav(
          azkarPath: AssetsManager.morningAzkarPath,
          imageAzkar: AssetsManager.morningAzkarIcon,
          titleAzkarAr: TextManager.morningAzkarAr,
          titleAzkarEn: TextManager.morningAzkarEn,
        ),
      ],
    );
  }
}
