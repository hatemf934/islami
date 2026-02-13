import 'package:flutter/material.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/features/quran/presentation/view/widget/list_tile_sura_item.dart';

class ListViewSura extends StatelessWidget {
  const ListViewSura({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return ListTileSuraItem(numberOfSura: index + 1);
      },
      separatorBuilder: (context, index) {
        return Divider(endIndent: HieghtManager.h60, indent: HieghtManager.h50);
      },
      itemCount: 20,
    );
  }
}
