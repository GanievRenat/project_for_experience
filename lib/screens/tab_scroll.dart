import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:templer/bloc/counter_bloc.dart';
import 'package:templer/bloc/counter_bloc_2.dart';
import 'package:templer/events/counter_events.dart';
import 'package:templer/models/cart.dart';
import 'package:templer/models/counterClass.dart';
import 'package:templer/res/res.dart';
import 'package:templer/widgets/widgets.dart';
import 'package:templer/models/models.dart';

class NewsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  final List<String> _tabs = <String>[
    "Наши акции",
    "Пиццы",
    "Римская пицца",
    "Комбо наборы",
    "Наборы",
    "Мега сеты",
    "VIP сеты",
    "Мини роллы",
    "Роллы",
    "Лапша WOK",
    "Супы",
    "Закуски",
    "Десерты",
    "Напитки",
  ];

  CounterBloc2 counterBloc;

  @override
  void initState() {
    // TODO: implement initState
    counterBloc = BlocProvider.of<CounterBloc2>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHome(
        title: 'Город на выбор',
        loyalText: '100',
      ),
      body: DefaultTabController(
        length: _tabs.length,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverOverlapAbsorber(
                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                child: SliverSafeArea(
                  top: false,
                  bottom: true, //Platform.isIOS ? false : true,
                  sliver: SliverAppBar(
                    backgroundColor: AppColors.SliderHomeBackground,
                    floating: true,
                    pinned: true,
                    snap: true,
                    expandedHeight: ((MediaQuery.of(context).size.width * 0.8) / 2) + heightFlexBlog,
                    forceElevated: innerBoxIsScrolled,
                    flexibleSpace: FlexibleSpaceBar(
                      background: MyFlexWidget(context: context),
                    ),
                    bottom: MyTabBar(
                      tabs: _tabs.map((String name) => Tab(text: name)).toList(),
                    ),
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  counterBloc.add(IncrementEvent());
                },
                child: Container(
                  color: AppColors.grayChateau,
                  child: BlocBuilder<CounterBloc2, MyCounterClass>(
                    bloc: counterBloc,
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
                ),
              ),
              Container(color: AppColors.grayChateau, child: gridView2),
              Container(color: AppColors.grayChateau, child: gridView2),
              Container(color: AppColors.grayChateau, child: gridView2),
              Container(color: AppColors.grayChateau, child: gridView2),
              Container(color: AppColors.grayChateau, child: gridView2),
              Container(color: AppColors.grayChateau, child: gridView2),
              Container(color: AppColors.grayChateau, child: gridView2),
              Container(color: AppColors.grayChateau, child: gridView2),
              Container(color: AppColors.grayChateau, child: gridView2),
              Container(color: AppColors.grayChateau, child: gridView2),
              Container(color: AppColors.grayChateau, child: gridView2),
              Container(color: AppColors.grayChateau, child: gridView2),
              Container(color: AppColors.grayChateau, child: gridView2),
            ],
          ),
        ),
      ),
    );
  }
}

ProductFlags flags = ProductFlags(text: 'Новинка', color: '#0E25FA');
ProductFlags flags2 = ProductFlags(text: 'ХИТ', color: '#FA0E0E');
Price price = Price(price: 100, oldPrice: 150, value: '450 гр.');
ProductItem product1 = ProductItem(
    id: 0,
    name: 'Пицца 1 сыр',
    isLike: false,
    urlLink: 'http://app.caffeitaly.ru/uploads/img/thumbnail/2020/04/13/22b89e0a786264cd7742c00eb76efa48.jpg',
    price: price,
    flags: [flags, flags2]);

ProductItem product2 = ProductItem(
    id: 1,
    name: 'Пицца 2 сыра',
    isLike: false,
    urlLink: 'http://app.caffeitaly.ru/uploads/img/thumbnail/2020/04/13/22b89e0a786264cd7742c00eb76efa48.jpg',
    price: price,
    flags: [flags]);

ProductItem product3 = ProductItem(
    id: 2,
    name: 'Пицца 3 сыра',
    isLike: true,
    urlLink: 'http://app.caffeitaly.ru/uploads/img/thumbnail/2020/04/13/22b89e0a786264cd7742c00eb76efa48.jpg',
    price: price,
    flags: []);

ProductItem product4 = ProductItem(
    id: 3,
    name: 'Пицца 4 сыра',
    isLike: false,
    urlLink: 'http://app.caffeitaly.ru/uploads/img/thumbnail/2020/04/13/22b89e0a786264cd7742c00eb76efa48.jpg',
    price: price,
    flags: [flags2]);

List<ProductItem> products = [product1, product2, product3, product4];

var gridView2 = StaggeredGridView.countBuilder(
  crossAxisCount: 2,
  itemCount: 4,
  staggeredTileBuilder: (int index) => new StaggeredTile.fit(1),
  itemBuilder: (BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        //CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);
        //counterBloc.add(IncrementEvent(index: 0));
      },
      child: ProductsItems(productsItem: products[index]),
    );
  },
);
