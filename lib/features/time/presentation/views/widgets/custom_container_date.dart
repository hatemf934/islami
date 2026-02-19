import 'package:flutter/material.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/core/utils/padding_manager.dart';
import 'package:islami/core/utils/raduis_manager.dart';
import 'package:islami/core/utils/width_manager.dart';
import 'package:islami/features/time/presentation/views/widgets/text_date.dart';

class CustomContainerDate extends StatelessWidget {
  const CustomContainerDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: HieghtManager.h300,
      width: WidthManager.w390,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(RaduisManager.raduis30),
        color: ColorManager.deepCamelColor,
      ),
      child: Padding(
        padding: EdgeInsets.all(PaddingManager.p15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextDate(textDate: "25 Ramadan \n1445"),
            Spacer(),
            TextDate(textDate: "19 April \n2024"),
          ],
        ),
      ),
    );
  }
}
