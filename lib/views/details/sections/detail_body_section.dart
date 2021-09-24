import 'package:flutter/material.dart';
import 'package:online_shop_app/models/product.model.dart';
import 'package:online_shop_app/views/constants.dart';
import 'package:online_shop_app/views/details/sections/add_to_cart_section.dart';
import 'package:online_shop_app/views/details/sections/cart_counter_section.dart';
import 'package:online_shop_app/views/details/sections/color_and_size_section.dart';
import 'package:online_shop_app/views/details/sections/counter_with_fav_btn_section.dart';
import 'package:online_shop_app/views/details/sections/description_section.dart';
import 'package:online_shop_app/views/details/sections/product_title_with_image_section.dart';

class DetailBodySection extends StatelessWidget {
  final Product? product;
  const DetailBodySection({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // cette variable nous fourni la longeur et largeur total de l'ecran
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                  ),
                  //height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      ColorAndSizeSection(product: product),
                      SizedBox(height: kDefaultPadding / 2),
                      DescriptionSection(product: product),
                      SizedBox(height: kDefaultPadding / 2),
                      CounterWithFavBtnSection(),
                      SizedBox(height: kDefaultPadding / 2),
                      AddToCartSection(
                        product: product,
                      ),
                    ],
                  ),
                ),
                ProductTitleWithImageSection(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
