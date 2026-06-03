import 'package:flutter/material.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/features/time/data/model/time_model.dart';
import 'package:islami/features/time/presentation/views/widgets/column_title_day_pray.dart';
import 'package:islami/features/time/presentation/views/widgets/list_view_card_pray.dart';
import 'package:islami/features/time/presentation/views/widgets/row_next_pray.dart';

class CustomContanierPrayTime extends StatelessWidget {
  const CustomContanierPrayTime({
    super.key,
    required this.nextPray,
    required this.timeModel,
  });
  final TimeModel timeModel;
  final String nextPray;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: HieghtManager.h10),
        ColumnTitleDayPray(timeModel: timeModel),
        SizedBox(height: HieghtManager.h30),
        ListViewCardPray(),
        SizedBox(height: HieghtManager.h30),
        RowNextPray(nextPray: nextPray),
      ],
    );
  }
}
