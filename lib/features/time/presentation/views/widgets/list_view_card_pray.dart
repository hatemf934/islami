import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/constant.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/get_now_pray.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/features/time/presentation/views/manager/datapray/date_pray_cubit.dart';
import 'package:islami/features/time/presentation/views/widgets/card_of_pray_time.dart';

class ListViewCardPray extends StatelessWidget {
  const ListViewCardPray({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DatePrayCubit, DatePrayState>(
      builder: (context, state) {
        if (state is DatePrayLoading) {
          return Center(
            child: CircularProgressIndicator(
              color: ColorManager.deepCamelColor,
            ),
          );
        } else if (state is DatePraySucsses) {
          int startIndex = getInitialPage(
            state.timingModel[0].timing,
            prayNames,
          );
          return CarouselSlider.builder(
            itemCount: prayNames.length,
            itemBuilder: (context, index, realIndex) {
              return CardOfPrayTime(
                prayName: prayNames[index],
                timingModel: state.timingModel[0],
              );
            },
            options: CarouselOptions(
              height: HieghtManager.h120,
              enlargeCenterPage: true,
              viewportFraction: 0.34,
              initialPage: startIndex,
              enableInfiniteScroll: false,
              enlargeStrategy: CenterPageEnlargeStrategy.scale,
            ),
          );
        } else {
          return SizedBox.shrink();
        }
      },
    );
  }
}
