import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/core/utils/assets_manager.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/font_icon_manager.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/core/utils/styles.dart';
import 'package:islami/core/utils/text_manager.dart';
import 'package:islami/features/sepha/presentation/manager/sepha_cubit/sepha_cubit.dart';

class SephaImageSection extends StatefulWidget {
  const SephaImageSection({super.key, required this.textSepha});
  final String textSepha;

  @override
  State<SephaImageSection> createState() => _SephaImageSectionState();
}

class _SephaImageSectionState extends State<SephaImageSection>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
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
                BlocProvider.of<SephaCubit>(context).numberOfSepha();
                animationController.forward(from: 0);
              },
              child: Text(widget.textSepha, style: Styles.textStyle45),
            ),
            BlocBuilder<SephaCubit, SephaState>(
              builder: (context, state) {
                return state is SephaOnTap
                    ? Text("${state.numberOfSepha}", style: Styles.textStyle45)
                    : Text(TextManager.zeroText, style: Styles.textStyle45);
              },
            ),
            BlocBuilder<SephaCubit, SephaState>(
              builder: (context, state) {
                return state is SephaOnTap
                    ? IconButton(
                        onPressed: () {
                          BlocProvider.of<SephaCubit>(context).resetSepha();
                        },
                        icon: Icon(
                          Icons.restart_alt,
                          color: ColorManager.primayColor,
                          size: FontIconManager.icon45,
                        ),
                      )
                    : Container();
              },
            ),
          ],
        ),
      ],
    );
  }
}
