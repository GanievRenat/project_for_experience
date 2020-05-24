import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:templer/res/colors.dart';

class SliderHorizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        /*Container(
          height: 8,
          color: AppColors.SliderHomeBackground,
        ),*/
        Container(
          height: (MediaQuery.of(context).size.width * 0.8) / 2,
          width: MediaQuery.of(context).size.width,
          color: AppColors.SliderHomeBackground,
          child: Swiper(
            itemBuilder: (BuildContext context, int index) {
              return ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Image.network(
                  "http://app.caffeitaly.ru/uploads/img/2020/04/13/213f14c93148d3922113b255d62f6597.jpg",
                  fit: BoxFit.cover,
                ),
              );
            },
            itemCount: 2,
            viewportFraction: 0.8,
            scale: 0.9,
          ),
        ),
        /*Container(
          height: 8,
          color: AppColors.SliderHomeBackground,
        ),*/
      ],
    );
  }
}
