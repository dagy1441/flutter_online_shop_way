import 'package:flutter/material.dart';
import 'package:online_shop_app/models/product.model.dart';
import 'package:online_shop_app/views/constants.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Text(
        "${product!.description!}",
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
