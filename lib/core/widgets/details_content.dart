import 'package:flutter/material.dart';
import 'package:islami/core/utils/assets_manager.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/widgets/app_bar_details_content.dart';
import 'package:islami/core/widgets/body_details_content.dart';

class DetailsContent extends StatelessWidget {
  const DetailsContent({
    super.key,
    required this.title,
    required this.tilteAppBar,
    required this.suraDetails,
  });
  final String title;
  final String tilteAppBar;
  final String suraDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.globalBackgroundColor,
      appBar: AppBarDetailsContent(tilteAppBar: tilteAppBar),
      body: Stack(
        children: [
          Column(
            children: [
              Spacer(),
              Image.asset(
                AssetsManager.buttomDecoration,
                fit: BoxFit.fitWidth,
                width: double.infinity,
              ),
            ],
          ),
          BodyDetailsContent(title: title, detailsPage: suraDetails),
        ],
      ),
    );
  }
}
