import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/core/utils/assets_manager.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/core/utils/padding_manager.dart';
import 'package:islami/features/quran/presentation/manager/get_recently_sura/get_recently_cubit.dart';
import 'package:islami/features/quran/presentation/manager/search_sura/search_sura_cubit.dart';
import 'package:islami/features/quran/presentation/view/widget/custom_text_feild.dart';
import 'package:islami/features/quran/presentation/view/widget/list_tile_sura_item.dart';
import 'package:islami/features/quran/presentation/view/widget/most_recently_section.dart';
import 'package:islami/features/quran/presentation/view/widget/sura_list_section.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => RecentSuraCubit()),
        BlocProvider(create: (context) => SearchSuraCubit()),
      ],
      child: Scaffold(
        backgroundColor: ColorManager.transmentColor,
        body: Padding(
          padding: EdgeInsets.all(PaddingManager.p15),
          child: Center(
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    AssetsManager.titleImage,
                    height: HieghtManager.h170,
                  ),
                ),
                CustomTextFiled(),
                SizedBox(height: HieghtManager.h15),
                Expanded(
                  child: BlocBuilder<SearchSuraCubit, SearchSuraState>(
                    builder: (context, state) {
                      if (state is SearchSuraInitial) {
                        return Column(
                          children: [
                            MostRecentlySection(),
                            SizedBox(height: HieghtManager.h15),
                            Expanded(child: SuraListSection()),
                          ],
                        );
                      } else if (state is SearchSuraNoResult) {
                        return Center(
                          child: Text(
                            "No Result Found",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        );
                      } else if (state is SearchSuraSearch) {
                        return ListView.builder(
                          itemBuilder: (context, index) {
                            return ListTileSuraItem(
                              modelSura: state.modelSura[index],
                            );
                          },
                          itemCount: state.modelSura.length,
                        );
                      } else {
                        return SizedBox.shrink();
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
