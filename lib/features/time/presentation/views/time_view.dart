import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/core/utils/assets_manager.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/core/utils/padding_manager.dart';
import 'package:islami/features/time/presentation/views/manager/datapray/date_pray_cubit.dart';
import 'package:islami/features/time/presentation/views/widgets/section_azkar.dart';
import 'package:islami/features/time/presentation/views/widgets/section_pray_time.dart';

class TimeView extends StatelessWidget {
  const TimeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DatePrayCubit()..getTimePray(),
      child: Scaffold(
        backgroundColor: ColorManager.transmentColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: PaddingManager.p32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    AssetsManager.titleImage,
                    height: HieghtManager.h170,
                  ),
                ),
                SectionPrayTime(),
                SectionAzkar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
