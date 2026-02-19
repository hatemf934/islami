import 'package:flutter/material.dart';

class Body0fCardAskar extends StatelessWidget {
  const Body0fCardAskar({
    super.key,
    required this.nameAskar,
    required this.imageAskar,
  });
  final String nameAskar;
  final String imageAskar;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imageAskar),
        Text(
          nameAskar,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
