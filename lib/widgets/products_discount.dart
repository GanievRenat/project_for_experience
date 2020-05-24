import 'package:flutter/material.dart';
import 'package:templer/res/res.dart';

class ProductsDiscount extends StatelessWidget {
  ProductsDiscount({this.discount});
  final String discount;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 1),
        child: Text(
          discount,
          style: AppStyles.h6.copyWith(
            color: AppColors.white,
            fontWeight: FontWeight.w700,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
