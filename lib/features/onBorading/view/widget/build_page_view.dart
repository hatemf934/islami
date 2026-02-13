import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

PageViewModel buildPageView({
  required String imageTitle,
  required String title,
  String? subTitle,
}) {
  return PageViewModel(
    useScrollView: false,
    titleWidget: Image.asset("assets/image/Group 31.png"),
    bodyWidget: Column(
      children: [
        Image.asset(imageTitle, scale: 4.4),
        SizedBox(height: 25),
        Text(
          title,
          style: TextStyle(
            fontSize: 25,
            color: Color(0xffE2BE7F),
            fontWeight: FontWeight.bold,
          ),
        ),
        subTitle != null ? SizedBox(height: 30) : SizedBox.shrink(),
        subTitle != null
            ? Text(
                textAlign: TextAlign.center,
                subTitle,
                style: TextStyle(fontSize: 18, color: Color(0xffE2BE7F)),
              )
            : SizedBox.shrink(),
      ],
    ),
  );
}
