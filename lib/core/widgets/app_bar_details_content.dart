import 'package:flutter/material.dart';
import 'package:islami/core/utils/color_manager.dart';

class AppBarDetailsContent extends StatelessWidget
    implements PreferredSizeWidget {
  const AppBarDetailsContent({super.key, required this.tilteAppBar});
  final String tilteAppBar;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back, color: ColorManager.primayColor),
      ),
      title: Text(
        tilteAppBar,
        style: TextStyle(color: ColorManager.primayColor),
      ),
      backgroundColor: ColorManager.globalBackgroundColor,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
