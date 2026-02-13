import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami/core/utils/assets_manager.dart';
import 'package:islami/core/utils/text_manager.dart';
import 'package:islami/features/onBorading/view/widget/build_page_view.dart';

List<PageViewModel> pageViewModel = [
  buildPageView(
    imageTitle: AssetsManager.onboardingImage1,
    title: TextManager.onboardingTitle1,
  ),
  buildPageView(
    imageTitle: AssetsManager.onboardingImage2,
    title: TextManager.onboardingTitle2,
    subTitle: TextManager.onboardingSubTitle2,
  ),
  buildPageView(
    imageTitle: AssetsManager.onboardingImage3,
    title: TextManager.onboardingTitle3,
    subTitle: TextManager.onboardingSubTitle3,
  ),
  buildPageView(
    imageTitle: AssetsManager.onboardingImage4,
    title: TextManager.onboardingTitle4,
    subTitle: TextManager.onboardingSubTitle4,
  ),

  buildPageView(
    imageTitle: AssetsManager.onboardingImage5,
    title: TextManager.onboardingTitle5,
    subTitle: TextManager.onboardingSubTitle5,
  ),
];
