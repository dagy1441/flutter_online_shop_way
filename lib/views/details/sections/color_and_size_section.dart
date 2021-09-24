import 'package:flutter/material.dart';
import 'package:online_shop_app/models/product.model.dart';
import 'package:online_shop_app/views/constants.dart';

class ColorAndSizeSection extends StatelessWidget {
  const ColorAndSizeSection({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Color"),
              Row(
                children: [
                  ColorDot(
                    color: Color(0xFF356C95),
                    isSelected: true,
                  ),
                  ColorDot(
                    color: Color(0xFFF8C078),
                    isSelected: false,
                  ),
                  ColorDot(
                    color: Color(0xFFA29B9B),
                    isSelected: false,
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: kTextColor),
              children: [
                TextSpan(text: "Size\n"),
                TextSpan(
                    text: "${product!.size!} cm",
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color? color;
  final bool? isSelected;
  ColorDot({
    Key? key,
    this.color,
    this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: kDefaultPadding / 3, right: kDefaultPadding / 2),
      padding: EdgeInsets.all(2.5),
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected! ? color! : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color!,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
