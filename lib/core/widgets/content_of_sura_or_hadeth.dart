import 'package:flutter/material.dart';
import 'package:islami/core/utils/padding_manager.dart';
import 'package:islami/core/utils/styles.dart';

class ContentOfSuraOrhadeth extends StatelessWidget {
  const ContentOfSuraOrhadeth({super.key, required this.detailsPage});
  final String detailsPage;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: PaddingManager.p15),
        child: Text(
          textAlign: TextAlign.center,
          detailsPage,
          style: Styles.textStyle20.copyWith(height: 1.7),
        ),
      ),
    );
  }
}
