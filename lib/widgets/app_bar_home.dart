import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:templer/bloc/counter_bloc.dart';
import 'package:templer/bloc/counter_bloc_2.dart';
import 'package:templer/models/cart.dart';
import 'package:templer/models/counterClass.dart';
import 'package:templer/res/res.dart';

class AppBarHome extends StatefulWidget implements PreferredSizeWidget {
  AppBarHome({this.title, this.loyalText, this.onPressSelectCity});

  final String title;
  final String loyalText;
  final Function onPressSelectCity;

  @override
  _AppBarHomeState createState() => _AppBarHomeState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _AppBarHomeState extends State<AppBarHome> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      //centerTitle: true,
      backgroundColor: AppColors.ToolBarHomeBackground,
      automaticallyImplyLeading: false,
      elevation: 0.0,
      title: GestureDetector(
        onTap: widget.onPressSelectCity,
        child: Row(
          children: <Widget>[
            BlocBuilder<CounterBloc, CartBloc>(
              builder: (context, cart) {
                return Center(
                  child: Text(cart.cart.length.toString()),
                );
              },
            ),
            BlocBuilder<CounterBloc2, CounterClass>(
              builder: (context, state) {
                if (state is MyCounterClass) {
                  return Center(
                    child: Text(state.count.toString()),
                  );
                } else {
                  return Container();
                }
              },
            ),
            Text(
              widget.title,
              style: AppStyles.h2Black.copyWith(
                color: AppColors.ToolBarHomeText,
                fontWeight: FontWeight.w800,
              ),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: AppColors.ToolBarHomeIcon,
            ),
          ],
        ),
      ),
      actions: <Widget>[
        loyalText('100'),
      ],
    );
  }
}

Widget loyalText(String text) {
  if ((text != null) && (text.isNotEmpty)) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        FaIcon(
          FontAwesomeIcons.gem,
          color: AppColors.ToolBarHomeIcon,
          size: 15,
        ),
        SizedBox(
          width: 3,
        ),
        Text(
          text,
          style: AppStyles.h2Black.copyWith(
            color: AppColors.ToolBarHomeText,
            fontWeight: FontWeight.w800,
          ),
        ),
        SizedBox(
          width: 15,
        ),
      ],
    );
  } else {
    return Container();
  }
}
