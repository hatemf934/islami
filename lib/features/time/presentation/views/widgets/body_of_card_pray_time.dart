import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:islami/core/utils/padding_manager.dart';
import 'package:islami/core/utils/styles.dart';
import 'package:islami/features/time/data/model/time_model.dart';

class BodyOfCardPrayTime extends StatelessWidget {
  const BodyOfCardPrayTime({
    super.key,
    required this.prayName,
    required this.timingModel,
  });
  final String prayName;
  final TimingModel timingModel;
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
              timingModel.timing[prayName],
              style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              DateFormat(
                "a",
              ).format(DateFormat("HH:mm").parse(timingModel.timing[prayName])),
              style: Styles.textStyle1white8,
            ),
          ],
        ),
      ),
    );
  }
}
