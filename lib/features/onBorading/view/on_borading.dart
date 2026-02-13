import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/core/utils/padding_manager.dart';
import 'package:islami/core/utils/raduis_manager.dart';
import 'package:islami/core/utils/route_manager.dart';
import 'package:islami/core/utils/styles.dart';
import 'package:islami/core/utils/text_manager.dart';
import 'package:islami/core/utils/width_manager.dart';
import 'package:islami/features/onBorading/view/widget/list_of_page_view.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});
  static String id = RouteManager.onboardingRoute;
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: ColorManager.globalBackgroundColor,
      pages: pageViewModel,
      baseBtnStyle: TextButton.styleFrom(
        textStyle: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
        backgroundColor: ColorManager.transmentColor,
        overlayColor: ColorManager.transmentColor,
        foregroundColor: ColorManager.primayColor,
        splashFactory: NoSplash.splashFactory,
      ),
      dotsDecorator: DotsDecorator(
        size: Size.fromRadius(RaduisManager.raduis4),
        activeSize: Size(WidthManager.w30, HieghtManager.h8),
        activeColor: ColorManager.primayColor,
        color: ColorManager.grayColor,
        spacing: EdgeInsets.symmetric(horizontal: PaddingManager.p3),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(RaduisManager.raduis25),
        ),
      ),
      onDone: () {},
      dotsFlex: 4,
      showBackButton: true,
      back: Text(TextManager.backText),
      next: Text(TextManager.nextText),
      done: Text(TextManager.finishText),
    );
  }
}
