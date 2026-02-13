import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/features/quran/presentation/manager/get_sura_cubit/get_sura_cubit.dart';
import 'package:islami/features/quran/presentation/view/widget/custom_failure.dart';
import 'package:islami/features/quran/presentation/view/widget/list_tile_sura_item.dart';

class ListViewSura extends StatelessWidget {
  const ListViewSura({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetSuraCubit, GetSuraState>(
      builder: (context, state) {
        if (state is GetSuraLoading) {
          return Center(
            child: CircularProgressIndicator(color: ColorManager.primayColor),
          );
        } else if (state is GetSuraSucsses) {
          return ListView.separated(
            itemBuilder: (context, index) {
              return ListTileSuraItem(modelSura: state.modelSura[index]);
            },
            separatorBuilder: (context, index) {
              return Divider(
                endIndent: HieghtManager.h60,
                indent: HieghtManager.h50,
              );
            },
            itemCount: 20,
          );
        } else if (state is GetSuraFailure) {
          return Center(
            child: CustomFailue(
              iconData: state.iconData,
              messageError: state.error,
            ),
          );
        } else {
          return SizedBox.shrink();
        }
      },
    );
  }
}
