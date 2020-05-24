import 'package:flutter/material.dart';
import 'package:templer/res/colors.dart';
import 'package:templer/res/res.dart';
import 'package:templer/widgets/widgets.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MyFlexWidget extends StatefulWidget {
  MyFlexWidget({this.context});

  final BuildContext context;

  @override
  _MyFlexWidgetState createState() => _MyFlexWidgetState();
}

class _MyFlexWidgetState extends State<MyFlexWidget> with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SliderHorizontal(),
        SearchProduct(
          title: 'Поиск',
          iconSearch: Icons.search,
          onPress: () {},
        ),
      ],
    );
  }
}
