import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/features/hadeth/presentation/views/widgets/card_hadeth.dart';

class ListViewHadeth extends StatelessWidget {
  const ListViewHadeth({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 20,
      itemBuilder: (context, index, realIndex) {
        return CardHadeth();
      },
      options: CarouselOptions(
        height: HieghtManager.h650,
        enlargeCenterPage: true,
        viewportFraction: 0.70,
        initialPage: 0,
        enableInfiniteScroll: false,
        enlargeStrategy: CenterPageEnlargeStrategy.scale,
      ),
    );
  }
}
