import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami/features/onBorading/view/on_borading.dart';
import 'package:islami/features/quran/presentation/manager/get_sura_cubit/get_sura_cubit.dart';
import 'package:islami/main_screen.dart';

void main() {
  runApp(const Islami());
}

class Islami extends StatelessWidget {
  const Islami({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetSuraCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Onboarding.id,
        routes: {
          Onboarding.id: (context) => Onboarding(),
          MainScreen.id: (context) => MainScreen(),
        },
      ),
    );
  }
}
