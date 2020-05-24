import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:templer/res/colors.dart';
import 'package:templer/res/res.dart';
import 'package:templer/screens/home.dart';
import 'package:templer/screens/tab_scroll.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'bloc/counter_bloc.dart';
import 'bloc/counter_bloc_2.dart';

void main() {
  runApp(
    BlocProvider<CounterBloc2>(
      create: (context) => CounterBloc2(),
      child: BlocProvider<CounterBloc>(
        create: (context) => CounterBloc(),
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  int _curentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: NewsScreen(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _curentIndex,
          type: BottomNavigationBarType.fixed,
          iconSize: 18,
          unselectedLabelStyle: AppStyles.bottomMenu,
          selectedLabelStyle: AppStyles.bottomMenuSelect,
          items: [
            BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.pizzaSlice,
              ),
              title: Text('Меню'),
              backgroundColor: AppColors.ToolBarHomeBackground,
            ),
            BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.smile,
              ),
              title: Text('Мой кабинет'),
              backgroundColor: AppColors.ToolBarHomeBackground,
            ),
            BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.heart,
              ),
              title: Text('Избранное'),
              backgroundColor: AppColors.ToolBarHomeBackground,
            ),
            BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.headset,
              ),
              title: Text('Контакты'),
              backgroundColor: AppColors.ToolBarHomeBackground,
            ),
            BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.shoppingBag,
              ),
              title: Text('Корзина'),
              backgroundColor: AppColors.ToolBarHomeBackground,
            )
          ],
          onTap: (index) {
            /*setState(() {
              _curentIndex = index;
            });*/
          },
        ),
      ),
    );
  }
}
