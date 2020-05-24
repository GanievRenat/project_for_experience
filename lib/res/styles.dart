import 'package:flutter/widgets.dart';

import 'colors.dart';

class AppStyles {
  // НАИМЕНОВАНИЕ ТОВАРА В СПИСКЕ ПРОДУКТОВ
  static const productItemName = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
    fontStyle: FontStyle.normal,
    //fontFamily: 'Roboto',
    fontFamily: 'GoogleFontRegular',
  );

  //  ЦЕНА В КАРТОЧКЕ ТОВАРА В СПИСКЕ ПРОДУКТОВ
  static const productItemPrice = TextStyle(
    color: AppColors.amaranth,
    fontWeight: FontWeight.w900,
    fontSize: 16,
    fontStyle: FontStyle.normal,
    //fontFamily: 'Roboto',
    fontFamily: 'GoogleFontRegular',
  );

  //  ЦЕНА В КАРТОЧКЕ ТОВАРА В СПИСКЕ ПРОДУКТОВ
  static const productItemOldPrice = TextStyle(
    color: AppColors.black,
    fontWeight: FontWeight.w500,
    decoration: TextDecoration.lineThrough,
    decorationColor: AppColors.amaranth,
    decorationThickness: 2.85,
    fontSize: 12,
    fontStyle: FontStyle.normal,
    //fontFamily: 'Roboto',
    fontFamily: 'GoogleFontRegular',
  );

  static const productItemPriceValue = TextStyle(
    fontSize: 13,
    color: AppColors.manatee,
    fontWeight: FontWeight.w500,
    //fontFamily: 'Roboto',
    fontFamily: 'GoogleFontRegular',
  );

  // ТЕКСТ ДЛЯ НИЖНЕГО МЕНЮ
  static const bottomMenu = TextStyle(
    fontSize: 10,
    color: AppColors.SearchIconAndText,
    fontWeight: FontWeight.w600,
    //fontFamily: 'Roboto',
    fontFamily: 'GoogleFontBold',
  );

  // ТЕКСТ ДЛЯ НИЖНЕГО МЕНЮ ДЛЯ ВЫДЕЛЕННОГО ТЕКСТА
  static const bottomMenuSelect = TextStyle(
    fontSize: 10,
    color: AppColors.black,
    fontWeight: FontWeight.w800,
    //fontFamily: 'Roboto',
    fontFamily: 'GoogleFontBold',
    letterSpacing: -0.24,
  );

  static const h6 = TextStyle(
    fontSize: 12,
    //height: 20 / 12,
    //letterSpacing: -0.24,
    fontWeight: FontWeight.w300,
    fontStyle: FontStyle.normal,
    //fontFamily: 'Roboto',
    fontFamily: 'GoogleFontRegular',
  );

  static const h5Black = TextStyle(
    fontSize: 13,
    //height: 18 / 13,
    fontWeight: FontWeight.normal,
    color: AppColors.black,
    fontStyle: FontStyle.normal,
    //fontFamily: 'Roboto',
    fontFamily: 'GoogleFontRegular',
  );

  static const h4 = TextStyle(
    fontSize: 14,
    //height: 16 / 14,
    color: AppColors.alto,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    //letterSpacing: 0.75,
    //fontFamily: 'Roboto',
    fontFamily: 'GoogleFontRegular',
  );

  static const h3 = TextStyle(
    fontSize: 14,
    //height: 20 / 14,
    color: AppColors.manatee,
    fontWeight: FontWeight.normal,
    fontStyle: FontStyle.normal,
    //letterSpacing: 0.25,
    //fontFamily: 'Roboto',
    fontFamily: 'GoogleFontRegular',
  );

  static const h2Black = TextStyle(
    fontSize: 17,
    //height: 22 / 17,
    //fontFamily: 'Roboto',
    color: AppColors.black,
    fontWeight: FontWeight.normal,
    fontStyle: FontStyle.normal,
    //letterSpacing: -0.41,
    fontFamily: 'GoogleFontRegular',
  );

  static const h1Black = TextStyle(
    fontSize: 18,
    //height: 23 / 18,
    color: AppColors.black,
    fontWeight: FontWeight.bold,
    //fontFamily: 'Roboto',
    fontStyle: FontStyle.normal,
    fontFamily: 'GoogleFontRegular',
  );
}
