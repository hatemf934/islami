import 'package:flutter/material.dart';
import 'package:islami/core/utils/text_manager.dart';
import 'package:islami/features/sepha/presentation/view/widgets/sepha_view.dart';

class PageViewSepha extends StatelessWidget {
  const PageViewSepha({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        SephaView(
          title: TextManager.titleSubhanAllah,
          textSepha: TextManager.azkarSubhanAllah,
        ),
        SephaView(
          title: TextManager.titleAlHamdullah,
          textSepha: TextManager.azkarAlHamdullah,
        ),
        SephaView(
          title: TextManager.titleAllahuAkbar,
          textSepha: TextManager.azkarAllahuAkbar,
        ),
        SephaView(
          title: TextManager.titleLaIlahaIllaAllah,
          textSepha: TextManager.azkarLaIlahaIllaAllah,
        ),
        SephaView(
          title: TextManager.titleSaliAlaNaby,
          textSepha: TextManager.azkarSaliAlaNaby,
        ),
      ],
    );
  }
}
