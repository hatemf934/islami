import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/features/time/presentation/views/widgets/card_of_pray_time.dart';

class ListViewCardPray extends StatelessWidget {
  const ListViewCardPray({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> prayNames = [
      "Fajr",
      "Sunrise",
      "Dhuhr",
      "Asr",
      "Sunset",
      "Maghrib",
      "Isha",
      "Imsak",
      "Midnight",
      "Firstthird",
      "Lastthird",
    ];
    return CarouselSlider.builder(
      itemCount: prayNames.length,
      itemBuilder: (context, index, realIndex) {
        return CardOfPrayTime(prayName: prayNames[index]);
      },
      options: CarouselOptions(
        height: HieghtManager.h120,
        enlargeCenterPage: true,
        viewportFraction: 0.34,
        initialPage: 0,
        enableInfiniteScroll: false,
        enlargeStrategy: CenterPageEnlargeStrategy.scale,
      ),
    );
  }
}
