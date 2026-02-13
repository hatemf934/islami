import 'package:flutter/material.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/features/quran/presentation/view/widget/card_sura_item.dart';

class CardSuraListView extends StatelessWidget {
  const CardSuraListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: HieghtManager.h180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (context, index) {
          return CardSuraItem();
        },
      ),
    );
  }
}
