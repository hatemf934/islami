import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islami/core/utils/assets_manager.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/core/utils/padding_manager.dart';
import 'package:islami/features/time/presentation/views/widgets/custom_container_date.dart';
import 'package:islami/features/time/presentation/views/widgets/custom_container_pray_time.dart';

class SectionPrayTime extends StatelessWidget {
  const SectionPrayTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: HieghtManager.h20),
        Center(
          child: Stack(
            children: [
              CustomContainerDate(),
              SvgPicture.asset(AssetsManager.timeContaier),
              Positioned(
                left: PaddingManager.p40,
                right: PaddingManager.p40,
                child: CustomContanierPrayTime(nextPray: "nextPray"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
