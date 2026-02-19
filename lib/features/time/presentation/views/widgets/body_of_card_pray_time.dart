import 'package:flutter/material.dart';
import 'package:islami/core/utils/padding_manager.dart';
import 'package:islami/core/utils/styles.dart';

class BodyOfCardPrayTime extends StatelessWidget {
  const BodyOfCardPrayTime({super.key, required this.prayName});
  final String prayName;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: PaddingManager.p8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(prayName, style: Styles.textStyle1white8),
            Text(
              "2.30",
              style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
            ),
            Text("pm", style: Styles.textStyle1white8),
          ],
        ),
      ),
    );
  }
}
