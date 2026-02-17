import 'package:flutter/material.dart';

class IconButtonSound extends StatelessWidget {
  const IconButtonSound({
    super.key,
    required this.onPressed,
    required this.iconData,
  });
  final Function() onPressed;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(iconData, color: Color(0xff202020), size: 40),
    );
  }
}
