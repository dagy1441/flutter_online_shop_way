import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_shop_app/models/product.model.dart';
import 'package:online_shop_app/views/constants.dart';

class AddToCartSection extends StatelessWidget {
  final Product? product;

  const AddToCartSection({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: kDefaultPadding),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: product!.color!,
              ),
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                "assets/icons/add_to_cart.svg",
                color: product!.color!,
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: TextButton(
                child: Text(
                  "Buy  Now".toUpperCase(),
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: product!.color!,
                  side: BorderSide(color: product!.color!, width: 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)),
                  //elevation: 20,
                  minimumSize: Size(50, 10),
                  //shadowColor: Colors.red,
                  //padding: EdgeInsets.only(left: 60, right: 60, top: 15, bottom: 15)
                  // shape: const BeveledRectangleBorder(
                  //     borderRadius: BorderRadius.all(Radius.circular(13))),
                ),
                onPressed: () {},
              ),

              // FlatButton(
              //   shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(18)),
              //   color: product!.color!,
              //   onPressed: () {},
              //   child: Text(
              //     "Buy  Now".toUpperCase(),
              //     style: TextStyle(
              //       fontSize: 17,
              //       fontWeight: FontWeight.bold,
              //       color: Colors.white,
              //     ),
              //   ),
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
