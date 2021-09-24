import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_shop_app/views/details/sections/cart_counter_section.dart';

class CounterWithFavBtnSection extends StatelessWidget {
  const CounterWithFavBtnSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CartCounterSection(),
        Container(
          padding: EdgeInsets.all(8),
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            color: Color(0xFFFF6464),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset("assets/icons/heart.svg"),
        )
      ],
    );
  }
}
