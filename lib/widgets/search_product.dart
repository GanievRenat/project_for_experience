import 'package:flutter/material.dart';
import 'package:templer/res/res.dart';

class SearchProduct extends StatelessWidget {
  SearchProduct({this.title, this.iconSearch, this.onPress});

  final String title;
  final IconData iconSearch;
  Function onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.SearchBackground,
      child: Container(
        margin: EdgeInsets.fromLTRB(8, 8, 8, 8),
        height: 35,
        decoration: BoxDecoration(
          color: AppColors.SearchBackgroundInput,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: onPress,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    title,
                    style: AppStyles.h3.copyWith(
                      color: AppColors.SearchIconAndText,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Icon(
                  iconSearch,
                  color: AppColors.SearchIconAndText,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
