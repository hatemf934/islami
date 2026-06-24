import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/core/widgets/error_view.dart';
import 'package:islami/features/hadeth/presentation/views/manager/get_hadeth/get_hadeth_cubit.dart';
import 'package:islami/features/hadeth/presentation/views/widgets/card_hadeth.dart';

class ListViewHadeth extends StatelessWidget {
  const ListViewHadeth({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetHadethCubit, GetHadethState>(
      builder: (context, state) {
        if (state is GetHadethLoading) {
          return Center(
            child: CircularProgressIndicator(color: ColorManager.primayColor),
          );
        }
        if (state is GetHadethSucsses) {
          return CarouselSlider.builder(
            itemCount: state.hadethModel.length,
            itemBuilder: (context, index, realIndex) {
              return CardHadeth(hadethModel: state.hadethModel[index]);
            },
            options: CarouselOptions(
              height: HieghtManager.h650,
              enlargeCenterPage: true,
              viewportFraction: 0.70,
              initialPage: 0,
              pauseAutoPlayInFiniteScroll: true,
              enableInfiniteScroll: true,
              enlargeStrategy: CenterPageEnlargeStrategy.scale,
            ),
          );
        }
        if (state is GetHadethFauilre) {
          return ErrorView(
            failure: state.failure,
            onRetry: () {
              BlocProvider.of<GetHadethCubit>(context).gethadeth();
            },
          );
        }
        return SizedBox.shrink();
      },
    );
  }
}
