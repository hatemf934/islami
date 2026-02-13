import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami/features/onBorading/view/widget/build_page_view.dart';

List<PageViewModel> pageViewModel = [
  buildPageView(
    imageTitle: "assets/image/Frame 3.png",
    title: "Welcome To Islam App",
  ),
  buildPageView(
    imageTitle: "assets/image/Frame 3 (1).png",
    title: "Welcome To Islam ",
    subTitle: "We Are Very Excited To Have You In Our Community",
  ),
  buildPageView(
    imageTitle: "assets/image/Frame 3 (2).png",
    title: "Reading the Quran",
    subTitle: "Read, and your Lord is the Most Generous",
  ),
  buildPageView(
    imageTitle: "assets/image/Frame 3 (3).png",
    title: "Bearish",
    subTitle: "Praise the name of your Lord, the Most High",
  ),

  buildPageView(
    imageTitle: "assets/image/Frame 3 (4).png",
    title: "Holy Quran Radio",
    subTitle:
        "You can listen to the Holy Quran Radio through the application for free and easily",
  ),
];
