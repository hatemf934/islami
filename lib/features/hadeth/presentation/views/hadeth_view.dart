import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/core/utils/assets_manager.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/features/hadeth/presentation/views/manager/get_hadeth/get_hadeth_cubit.dart';
import 'package:islami/features/hadeth/presentation/views/widgets/list_view_hadeth.dart';

class HadethView extends StatelessWidget {
  const HadethView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetHadethCubit()..gethadeth(),
      child: Scaffold(
        backgroundColor: ColorManager.transmentColor,
        body: Center(
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  AssetsManager.titleImage,
                  height: HieghtManager.h170,
                ),
              ),
              SizedBox(height: HieghtManager.h30),
              Expanded(child: ListViewHadeth()),
              SizedBox(height: HieghtManager.h20),
            ],
          ),
        ),
      ),
    );
  }
}
