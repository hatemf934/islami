import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/core/helper/on_generate.dart';
import 'package:islami/features/onBorading/view/on_borading.dart';
import 'package:islami/features/quran/presentation/manager/get_sura_cubit/get_sura_cubit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const Islami());
}

class Islami extends StatelessWidget {
  const Islami({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetSuraCubit(),
      child: ScreenUtilInit(
        designSize: Size(430, 932),
        minTextAdapt: true,
        splitScreenMode: true,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: Onboarding.id,
          onGenerateRoute: onGenerateRoute,
        ),
      ),
    );
  }
}
