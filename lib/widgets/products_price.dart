import 'package:flutter/material.dart';
import 'package:templer/res/res.dart';
import 'package:templer/models/models.dart';

class ProductPrice extends StatelessWidget {
  ProductPrice({this.price});

  final Price price;

  @override
  Widget build(BuildContext context) {
    List<Widget> priceWidgets = [];
    priceWidgets.add(Text(
      '${price.price.ceil().toString()} р.',
      style: AppStyles.productItemPrice,
    ));

    if (price.oldPrice != 0) {
      priceWidgets.add(SizedBox(
        width: 5,
      ));
      priceWidgets.add(Text(
        '${price.oldPrice.ceil().toString()} р.',
        style: AppStyles.productItemOldPrice,
      ));
    }
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        children: priceWidgets,
      ),
    );
  }
}
