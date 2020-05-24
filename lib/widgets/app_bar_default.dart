import 'package:flutter/material.dart';
import 'package:templer/res/res.dart';

class AppBarDefault extends StatefulWidget implements PreferredSizeWidget {
  AppBarDefault({this.title, this.onPressBack});

  final String title;
  final Function onPressBack;

  @override
  _AppBarDefaultState createState() => _AppBarDefaultState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _AppBarDefaultState extends State<AppBarDefault> {
  @override
  Widget build(BuildContext context) {
    Widget leading;
    if (widget.onPressBack != null) {
      leading = IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: AppColors.ToolBarHomeIcon,
          size: 20.0,
        ),
        onPressed: widget.onPressBack,
      );
    }

    return AppBar(
      centerTitle: false,
      elevation: 0.0,
      title: Text(
        widget.title,
        style: AppStyles.h1Black.copyWith(
          color: AppColors.ToolBarHomeText,
        ),
      ),
      backgroundColor: AppColors.ToolBarHomeBackground,
      leading: leading,
    );
  }
}
