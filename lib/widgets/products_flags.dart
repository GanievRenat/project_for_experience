import 'package:flutter/material.dart';
import 'package:templer/res/res.dart';
import 'package:templer/models/models.dart';
import 'package:templer/res/my_extension.dart';

class ProductsFlags extends StatelessWidget {
  ProductsFlags({this.flags});

  final List<ProductFlags> flags;

  @override
  Widget build(BuildContext context) {
    List<Widget> flagsWidget = [];
    for (ProductFlags f in flags) {
      flagsWidget.add(newFlag(f));
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: flagsWidget,
    );
  }

  Widget newFlag(ProductFlags flag) {
    return Container(
      margin: EdgeInsets.only(
        top: 3,
        left: 5,
      ),
      decoration: BoxDecoration(
        color:
            (flag.color != null && flag.color.isNotEmpty && flag.color.length == 7) ? flag.color.toColor : Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
        child: Text(
          flag.text,
          style: AppStyles.h6.copyWith(
            color: AppColors.white,
            fontWeight: FontWeight.w500,
            fontSize: 9,
          ),
        ),
      ),
    );
  }
}
