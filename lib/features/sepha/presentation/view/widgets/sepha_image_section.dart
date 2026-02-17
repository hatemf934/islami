import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/core/utils/assets_manager.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/font_size_manager.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/core/utils/styles.dart';
import 'package:islami/features/sepha/presentation/manager/sepha_cubit/sepha_cubit.dart';

class SephaImageSection extends StatelessWidget {
  const SephaImageSection({super.key, required this.textSepha});
  final String textSepha;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          children: [
            Image.asset(AssetsManager.sephaHead, scale: 4),
            Image.asset(AssetsManager.sephaBody),
          ],
        ),

        Column(
          children: [
            SizedBox(height: HieghtManager.h60),
            TextButton(
              onPressed: () {
                BlocProvider.of<SephaCubit>(context).numberOfSepha();
              },
              child: Text(textSepha, style: Styles.textStyle45),
            ),
            BlocBuilder<SephaCubit, SephaState>(
              builder: (context, state) {
                return state is SephaOnTap
                    ? Text("${state.numberOfSepha}", style: Styles.textStyle45)
                    : Text("0", style: Styles.textStyle45);
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
                          size: FontSizeManager.font45,
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
