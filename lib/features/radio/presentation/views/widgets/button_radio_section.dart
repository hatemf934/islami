import 'package:flutter/material.dart';
import 'package:islami/core/utils/text_manager.dart';
import 'package:islami/features/radio/presentation/views/widgets/radio_elveted_button.dart';

class ButtonRadioSection extends StatefulWidget {
  const ButtonRadioSection({super.key});

  @override
  State<ButtonRadioSection> createState() => _ButtonRadioSectionState();
}

class _ButtonRadioSectionState extends State<ButtonRadioSection> {
  String selectedButton = TextManager.radioNav;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RadioElvetedButton(
              isPressed: selectedButton == TextManager.radioNav,
              onPressed: () {
                setState(() {
                  selectedButton = TextManager.radioNav;
                });
              },
              textTitle: TextManager.radioNav,
            ),
            RadioElvetedButton(
              isPressed: selectedButton == TextManager.recitersNav,
              onPressed: () {
                setState(() {
                  selectedButton = TextManager.recitersNav;
                });
              },
              textTitle: TextManager.recitersNav,
            ),
          ],
        ),
      ],
    );
  }
}
