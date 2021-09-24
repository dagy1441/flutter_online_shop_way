import 'package:flutter/material.dart';
import 'package:online_shop_app/models/product.model.dart';
import 'package:online_shop_app/views/constants.dart';

class ProductCard extends StatelessWidget {
  final Product? product;
  final VoidCallback? doPress;
  ProductCard({Key? key, required this.product, this.doPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: doPress!,
      child: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding),
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                color: product!.color!,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(product!.image!),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(
              "${product!.title!}",
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "\$${product!.price!}",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
