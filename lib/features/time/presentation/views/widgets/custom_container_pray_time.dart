import 'package:flutter/material.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/features/time/presentation/views/widgets/column_title_day_pray.dart';
import 'package:islami/features/time/presentation/views/widgets/list_view_card_pray.dart';
import 'package:islami/features/time/presentation/views/widgets/row_next_pray.dart';

class CustomContanierPrayTime extends StatelessWidget {
  const CustomContanierPrayTime({super.key, required this.nextPray});

  final String nextPray;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: HieghtManager.h15),
        ColumnTitleDayPray(),
        SizedBox(height: HieghtManager.h30),
        ListViewCardPray(),
        SizedBox(height: HieghtManager.h40),
        RowNextPray(nextPray: nextPray),
        SizedBox(height: HieghtManager.h15),
      ],
    );
  }
}
