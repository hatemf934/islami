import 'package:flutter/material.dart';
import 'package:islami/core/utils/assets_manager.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/font_size_manager.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/core/utils/raduis_manager.dart';
import 'package:islami/core/utils/text_manager.dart';
import 'package:islami/core/utils/width_manager.dart';

class ButtomNavBar extends StatefulWidget {
  const ButtomNavBar({
    super.key,
    required this.onTap,
    required this.currentindex,
  });
  final Function(int) onTap;
  final int currentindex;
  @override
  State<ButtomNavBar> createState() => _ButtomNavigatorBarState();
}

class _ButtomNavigatorBarState extends State<ButtomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.currentindex,
      type: BottomNavigationBarType.fixed,
      iconSize: FontSizeManager.font30,
      backgroundColor: ColorManager.primayColor,
      showUnselectedLabels: false,
      selectedItemColor: ColorManager.whiteColor,
      unselectedItemColor: ColorManager.globalBackgroundColor,
      onTap: widget.onTap,
      items: <BottomNavigationBarItem>[
        buildNavItem(AssetsManager.quranIcon, TextManager.quranNav),
        buildNavItem(AssetsManager.hadethIcon, TextManager.hadethNav),
        buildNavItem(AssetsManager.sebhaIcon, TextManager.sebhaNav),
        buildNavItem(AssetsManager.radioIcon, TextManager.radioNav),
        buildNavItem(AssetsManager.timeIcon, TextManager.timeNav),
      ],
    );
  }
}

BottomNavigationBarItem buildNavItem(String path, String label) {
  return BottomNavigationBarItem(
    label: label,
    icon: Image.asset(
      path,
      width: WidthManager.w30,
      color: ColorManager.globalBackgroundColor,
    ),
    activeIcon: Container(
      width: WidthManager.w59,
      height: HieghtManager.h34,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(RaduisManager.raduis66),
        color: ColorManager.globalBackgroundColor,
      ),
      child: Image.asset(path, scale: 2.5, color: ColorManager.whiteColor),
    ),
  );
}
