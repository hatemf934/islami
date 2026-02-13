import 'package:flutter/material.dart';
import 'package:islami/core/utils/assets_manager.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/styles.dart';

class ListTileSuraItem extends StatelessWidget {
  const ListTileSuraItem({super.key, required this.numberOfSura});
  final int numberOfSura;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ListTile(
        leading: Stack(
          alignment: AlignmentGeometry.center,
          children: [
            Image.asset(AssetsManager.mostNumberFrame),
            Text(
              numberOfSura.toString(),
              style: Styles.textStyle16.copyWith(
                color: ColorManager.whiteColor,
              ),
            ),
          ],
        ),
        title: Text(
          "alfatha",
          style: Styles.textStyle24.copyWith(color: ColorManager.whiteColor),
        ),
        subtitle: Text(
          "7 Verses",
          style: TextStyle(color: ColorManager.whiteColor),
        ),
        trailing: Text(
          "الفاتحه",
          style: Styles.textStyle24.copyWith(color: ColorManager.whiteColor),
        ),
      ),
    );
  }
}
