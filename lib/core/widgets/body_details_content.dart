import 'package:flutter/material.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/core/utils/padding_manager.dart';
import 'package:islami/core/widgets/content_of_sura_or_hadeth.dart';
import 'package:islami/core/widgets/image_details_sura_or_hadeth.dart';

class BodyDetailsContent extends StatelessWidget {
  const BodyDetailsContent({
    super.key,
    required this.title,
    required this.detailsPage,
  });
  final String title;
  final String detailsPage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(PaddingManager.p15),
      child: Column(
        children: [
          ImageDetailsSuraOrhadeth(title: title),
          Expanded(child: ContentOfSuraOrhadeth(detailsPage: detailsPage)),
          SizedBox(height: HieghtManager.h20),
        ],
      ),
    );
  }
}
