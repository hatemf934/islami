import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami/features/onBorading/view/widget/list_of_page_view.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});
  static String id = 'on_boarding';
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: Color(0xff202020),
      pages: pageViewModel,
      baseBtnStyle: TextButton.styleFrom(
        textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        backgroundColor: Colors.transparent,
        overlayColor: Colors.transparent,
        foregroundColor: Color(0xffE2BE7F),
        splashFactory: NoSplash.splashFactory,
      ),
      dotsDecorator: DotsDecorator(
        size: Size.fromRadius(4),
        activeSize: const Size(30, 8),
        activeColor: Color(0xffE2BE7F),
        color: Color(0xff707070),
        spacing: const EdgeInsets.symmetric(horizontal: 3.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
      onDone: () {},
      dotsFlex: 4,
      showBackButton: true,
      back: const Text("Back"),
      next: const Text("Next"),
      done: const Text("Finish"),
    );
  }
}
