import 'package:flutter/material.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/features/radio/presentation/views/widgets/radio_or_reciters.dart';

class ListViewRadioSection extends StatelessWidget {
  const ListViewRadioSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: HieghtManager.h20),
        Expanded(child: RadioOrRecitersListView()),
        SizedBox(height: HieghtManager.h20),
      ],
    );
  }
}
