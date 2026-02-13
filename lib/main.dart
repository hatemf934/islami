import 'package:flutter/material.dart';
import 'package:islami/features/onBorading/view/on_borading.dart';

void main() {
  runApp(const Islami());
}

class Islami extends StatelessWidget {
  const Islami({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Onboarding.id,
      routes: {Onboarding.id: (context) => Onboarding()},
    );
  }
}
