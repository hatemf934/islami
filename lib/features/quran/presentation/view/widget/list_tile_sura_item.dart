import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/core/utils/assets_manager.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/styles.dart';
import 'package:islami/core/utils/text_manager.dart';
import 'package:islami/core/widgets/details_content.dart';
import 'package:islami/features/quran/data/model/model_sura.dart';
import 'package:islami/features/quran/presentation/manager/get_recently_sura/get_recently_cubit.dart';

class ListTileSuraItem extends StatelessWidget {
  const ListTileSuraItem({super.key, required this.modelSura});
  final ModelSura modelSura;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<RecentSuraCubit>(context).addSura(
          ModelSura(
            numberOfSura: modelSura.numberOfSura,
            countAyat: modelSura.countAyat,
            suraNameEng: modelSura.suraNameEng,
            suraNameAr: modelSura.suraNameAr,
            suraContent: modelSura.suraContent,
          ),
        );

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsContent(
              suraDetails: modelSura.suraContent,
              title: modelSura.suraNameAr,
              tilteAppBar: modelSura.suraNameEng,
            ),
          ),
        );
      },
      child: ListTile(
        leading: Stack(
          alignment: AlignmentGeometry.center,
          children: [
            Image.asset(AssetsManager.mostNumberFrame),
            Text(
              modelSura.numberOfSura.toString(),
              style: Styles.textStyle16.copyWith(
                color: ColorManager.whiteColor,
              ),
            ),
          ],
        ),
        title: Text(
          modelSura.suraNameEng,
          style: Styles.textStyle24.copyWith(color: ColorManager.whiteColor),
        ),
        subtitle: Text(
          "${modelSura.countAyat} ${TextManager.verses}",
          style: TextStyle(color: ColorManager.whiteColor),
        ),
        trailing: Text(
          modelSura.suraNameAr,
          style: Styles.textStyle24.copyWith(color: ColorManager.whiteColor),
        ),
      ),
    );
  }
}
