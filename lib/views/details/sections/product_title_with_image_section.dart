import 'package:flutter/material.dart';
import 'package:online_shop_app/models/product.model.dart';
import 'package:online_shop_app/views/constants.dart';

class ProductTitleWithImageSection extends StatelessWidget {
  const ProductTitleWithImageSection({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Aristocratic Hand bag",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "${product!.title!}",
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Price\n"),
                    TextSpan(
                      text: "\$${product!.price!}",
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              SizedBox(width: kDefaultPadding),
              Expanded(
                child: Image.asset(
                  "${product!.image!}",
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
