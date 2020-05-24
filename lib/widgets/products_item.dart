import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:templer/bloc/counter_bloc.dart';
import 'package:templer/events/counter_events.dart';
import 'package:templer/models/cart.dart';
import 'package:templer/res/res.dart';
import 'package:templer/widgets/widgets.dart';
import 'package:templer/models/models.dart';

const double _heightImage = 200;

class ProductsItems extends StatefulWidget {
  final ProductItem productsItem;

  ProductsItems({this.productsItem});

  @override
  _ProductsItemsState createState() => _ProductsItemsState();
}

class _ProductsItemsState extends State<ProductsItems> {
  @override
  Widget build(BuildContext context) {
    if (widget.productsItem == null) {
      return _errorContainer();
    }

    List<Widget> ImageStack = [];

    CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);

    // ИЗОБРАЖЕНИЕ
    if (widget.productsItem.urlLink != null && widget.productsItem.urlLink.isNotEmpty) {
      ImageStack.add(Container(
        color: AppColors.white,
        child: CachedNetworkImage(
          height: _heightImage,
          imageUrl: widget.productsItem.urlLink,
          fit: BoxFit.contain,
          placeholder: (context, url) => _loadingImageProduct(),
          errorWidget: (context, url, error) => _loadingImageProduct(),
        ),
      ));
    } else {
      ImageStack.add(_loadingImageProduct());
    }

    // КНОПКА ЛАЙК
    ImageStack.add(Align(
      alignment: Alignment.topRight,
      child: LikeButton(widget.productsItem.isLike),
    ));

    // ФЛАГИ
    if (widget.productsItem.flags != null && widget.productsItem.flags.length > 0) {
      ImageStack.add(Align(
        alignment: Alignment.topLeft,
        child: ProductsFlags(flags: widget.productsItem.flags),
      ));
    }

    // ДИСКОНТ
    if (widget.productsItem.price != null && widget.productsItem.price.oldPrice != 0) {
      int discount = (100 - ((widget.productsItem.price.price * 100) / widget.productsItem.price.oldPrice)).toInt();
      if (discount > 0) {
        ImageStack.add(Positioned(
          bottom: 0.0,
          child: Align(
            alignment: FractionalOffset.bottomCenter,
            child: ProductsDiscount(discount: '-${discount.toString()}%'),
          ),
        ));
      }
    }

    return Container(
      margin: EdgeInsets.only(right: 1, bottom: 1),
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: ImageStack,
          ),
          Text(
            widget.productsItem.name,
            style: AppStyles.productItemName,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            widget.productsItem.price.value,
            style: AppStyles.productItemPriceValue,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: ProductPrice(price: widget.productsItem.price),
              ),
              GestureDetector(
                onTap: () {
                  counterBloc.add(IncrementEvent(index: widget.productsItem.id));
                },
                child: CircleAvatar(
                  backgroundColor: AppColors.dodgerBlue,
                  foregroundColor: AppColors.white,
                  radius: 20,
                  child: BlocBuilder<CounterBloc, CartBloc>(
                    builder: (context, cart) {
                      return Center(
                        child: Text(cart.cart[widget.productsItem.id].toString()),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

Widget _loadingImageProduct() {
  return Container(
    height: _heightImage,
    width: double.infinity,
    child: Center(
      child: Image.asset('asset/images/none_product.png'),
    ),
  );
}

Widget _errorContainer() {
  return Container(
    width: double.infinity,
    height: 300,
    child: Center(
      child: Text('Ooops...'),
    ),
  );
}
