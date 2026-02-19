import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/padding_manager.dart';
import 'package:islami/core/utils/raduis_manager.dart';
import 'package:islami/core/utils/width_manager.dart';
import 'package:intl/intl.dart';
import 'package:islami/features/time/data/model/time_model.dart';
import 'package:islami/features/time/presentation/views/widgets/text_date.dart';

class CustomContainerDate extends StatelessWidget {
  const CustomContainerDate({super.key, required this.timeModel});
  final TimeModel timeModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 285.h,
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
            TextDate(
              textDate: DateFormat(
                "dd MMM '\n'yyyy",
              ).format(DateFormat("dd-MM-yyyy").parse(timeModel.dateGregorian)),
            ),
            Spacer(),
            TextDate(
              textDate: DateFormat(
                "dd MMM '\n'yyyy",
              ).format(DateFormat("dd-MM-yyyy").parse(timeModel.dateHijri)),
            ),
          ],
        ),
      ),
    );
  }
}
