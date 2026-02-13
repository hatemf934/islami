import 'package:flutter/material.dart';
import 'package:islami/core/utils/assets_manager.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/route_manager.dart';
import 'package:islami/core/widgets/buttom_nav_bar.dart';
import 'package:islami/features/quran/presentation/view/quran_view.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  static String id = RouteManager.mainScreen;
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> pages = [QuranView()];
  List<ImageProvider> images = [
    AssetImage(AssetsManager.background1),
    AssetImage(AssetsManager.background2),
    AssetImage(AssetsManager.background3),
    AssetImage(AssetsManager.background4),
    AssetImage(AssetsManager.background5),
  ];
  int curentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(image: images[curentindex], fit: BoxFit.fill),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: ColorManager.transmentColor,
          bottomNavigationBar: ButtomNavBar(
            currentindex: curentindex,
            onTap: (value) {
              setState(() {
                curentindex = value;
              });
            },
          ),
          body: pages[curentindex],
        ),
      ),
    );
  }
}
