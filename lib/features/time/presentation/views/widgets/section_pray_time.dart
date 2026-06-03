import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islami/constant.dart';
import 'package:islami/core/utils/assets_manager.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/get_now_pray.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/core/utils/padding_manager.dart';
import 'package:islami/features/time/presentation/views/manager/datapray/date_pray_cubit.dart';
import 'package:islami/features/time/presentation/views/widgets/custom_container_date.dart';
import 'package:islami/features/time/presentation/views/widgets/custom_container_pray_time.dart';

class SectionPrayTime extends StatelessWidget {
  const SectionPrayTime({super.key});

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenheight * 0.35,
      child: Column(
        children: [
          SizedBox(height: HieghtManager.h20),
          Center(
            child: BlocBuilder<DatePrayCubit, DatePrayState>(
              builder: (context, state) {
                if (state is DatePrayLoading) {
                  return Center(
                    child: CircularProgressIndicator(
                      color: ColorManager.primayColor,
                    ),
                  );
                } else if (state is DatePraySucsses) {
                  return FutureBuilder<String>(
                    future: getRemainingTime(
                      state.timingModel[0].timing,
                      prayNames,
                    ),
                    builder: (context, snapshot) {
                      String remainingTime = snapshot.data ?? "--:--";
                      return Stack(
                        children: [
                          CustomContainerDate(timeModel: state.timeModel),
                          SvgPicture.asset(
                            AssetsManager.timeContaier,
                            height: screenheight * 0.31,
                          ),
                          Positioned(
                            left: PaddingManager.p40,
                            right: PaddingManager.p40,

                            child: CustomContanierPrayTime(
                              timeModel: state.timeModel,
                              nextPray: remainingTime,
                            ),
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  return SizedBox.shrink();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
