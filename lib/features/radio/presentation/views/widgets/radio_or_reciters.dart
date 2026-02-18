import 'package:flutter/material.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/features/radio/presentation/views/widgets/radio_card_view.dart';

class RadioOrRecitersListView extends StatelessWidget {
  const RadioOrRecitersListView({super.key, required this.items});
  final List<dynamic> items;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return RadioCardView(parentModel: items[index]);
      },
      separatorBuilder: (context, index) => SizedBox(height: HieghtManager.h20),
    );
  }
}
