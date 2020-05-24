import 'package:flutter/material.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:templer/res/res.dart';

const double _kTabHeight = 46.0;
const double _kTextAndIconTabHeight = 72.0;
const double indicatorWeight = 2.0;

class MyTabBar extends StatefulWidget implements PreferredSizeWidget {
  MyTabBar({this.tabs, this.controller});

  final List<Widget> tabs;
  final TabController controller;

  @override
  _MyTabBarState createState() => _MyTabBarState();

  @override
  Size get preferredSize {
    for (Widget item in tabs) {
      if (item is Tab) {
        final Tab tab = item;
        if (tab.text != null && tab.icon != null) return Size.fromHeight(_kTextAndIconTabHeight + indicatorWeight);
      }
    }
    return Size.fromHeight(_kTabHeight + indicatorWeight);
  }
}

class _MyTabBarState extends State<MyTabBar> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      width: double.infinity,
      child: TabBar(
        controller: widget.controller,
        indicatorColor: Colors.grey,
        labelColor: AppColors.white,
        unselectedLabelColor: Colors.grey,
        labelStyle: AppStyles.h3.copyWith(fontWeight: FontWeight.w600),
        isScrollable: true,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: new BubbleTabIndicator(
          indicatorHeight: 28.0,
          indicatorColor: AppColors.black,
          tabBarIndicatorSize: TabBarIndicatorSize.tab,
          indicatorRadius: 25,
        ),
        tabs: widget.tabs,
      ),
    );
  }
}
