import 'package:flutter/material.dart';
import 'package:online_shop_app/models/product.model.dart';
import 'package:online_shop_app/views/constants.dart';
import 'package:online_shop_app/views/details/details_view.dart';
import 'package:online_shop_app/views/home/custom_widgets/home_categories_section.dart';
import 'package:online_shop_app/views/home/custom_widgets/product_card.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
              top: kDefaultPadding, left: kDefaultPadding),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaultPadding,
                crossAxisSpacing: kDefaultPadding,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => ProductCard(
                product: products[index],
                doPress: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailView(product: products[index]),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
