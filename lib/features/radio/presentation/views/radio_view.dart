import 'package:flutter/material.dart';
import 'package:islami/core/utils/assets_manager.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/features/radio/presentation/views/widgets/button_radio_section.dart';
import 'package:islami/features/radio/presentation/views/widgets/list_view_radio_section.dart';

class RadioView extends StatefulWidget {
  const RadioView({super.key});

  @override
  State<RadioView> createState() => _RadioViewState();
}

class _RadioViewState extends State<RadioView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.transmentColor,
      body: Column(
        children: [
          Center(
            child: Image.asset(
              AssetsManager.titleImage,
              height: HieghtManager.h170,
            ),
          ),
          ButtonRadioSection(),
          Expanded(child: ListViewRadioSection()),
        ],
      ),
    );
  }
}
