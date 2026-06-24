import 'package:flutter/material.dart';
import 'package:islami/core/utils/assets_manager.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/font_icon_manager.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/core/utils/styles.dart';

class SephaImageSection extends StatefulWidget {
  const SephaImageSection({super.key, required this.textSepha});
  final String textSepha;

  @override
  State<SephaImageSection> createState() => _SephaImageSectionState();
}

class _SephaImageSectionState extends State<SephaImageSection>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  int indexSepha = 0;
  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          children: [
            Image.asset(AssetsManager.sephaHead, scale: 4),
            AnimatedBuilder(
              animation: animationController,
              builder: (context, child) {
                return Transform.rotate(
                  angle: animationController.value * 0.2,
                  child: child,
                );
              },
              child: Image.asset(AssetsManager.sephaBody),
            ),
          ],
        ),

        Column(
          children: [
            SizedBox(height: HieghtManager.h60),
            TextButton(
              onPressed: () {
                setState(() {
                  indexSepha += 1;
                });
                animationController.forward(from: 0);
              },
              child: Text(widget.textSepha, style: Styles.textStyle45),
            ),
            Text(indexSepha.toString(), style: Styles.textStyle45),
            indexSepha != 0
                ? IconButton(
                    onPressed: () => setState(() {
                      indexSepha = 0;
                    }),
                    icon: Icon(
                      Icons.restart_alt,
                      color: ColorManager.primayColor,
                      size: FontIconManager.icon45,
                    ),
                  )
                : Container(),
          ],
        ),
      ],
    );
  }
}
