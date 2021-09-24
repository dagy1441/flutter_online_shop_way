import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_shop_app/models/product.model.dart';
import 'package:online_shop_app/views/constants.dart';
import 'package:online_shop_app/views/details/sections/detail_body_section.dart';

class DetailView extends StatelessWidget {
  final Product? product;
  const DetailView({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // chaque produit a sa couleur par defaut
      backgroundColor: product!.color!,
      appBar: buildAppBar(context),
      body: DetailBodySection(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product!.color!,
      elevation: 0,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: SvgPicture.asset("assets/icons/back.svg"),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            color: kTextColor,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            color: kTextColor,
          ),
        ),
        SizedBox(
          width: kDefaultPadding / 2,
        ),
      ],
    );
  }
}
