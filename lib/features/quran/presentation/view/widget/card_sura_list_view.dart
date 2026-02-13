import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/core/utils/styles.dart';
import 'package:islami/core/utils/text_manager.dart';
import 'package:islami/features/quran/presentation/manager/get_recently_sura/get_recently_cubit.dart';
import 'package:islami/features/quran/presentation/view/widget/card_sura_item.dart';

class CardSuraListView extends StatelessWidget {
  const CardSuraListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: HieghtManager.h180,
      child: BlocBuilder<RecentSuraCubit, GetRecentlyState>(
        builder: (context, state) {
          if (state is GetRecently) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.modelSura.length,
              itemBuilder: (context, index) {
                return CardSuraItem(modelSura: state.modelSura[index]);
              },
            );
          } else if (state is GetRecentlyInitial) {
            return Center(
              child: Text(
                TextManager.notRecentluYet,
                style: Styles.textStyle30,
              ),
            );
          } else {
            return SizedBox.shrink();
          }
        },
      ),
    );
  }
}
