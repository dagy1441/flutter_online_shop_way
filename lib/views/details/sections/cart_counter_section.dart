import 'package:flutter/material.dart';
import 'package:online_shop_app/views/constants.dart';

class CartCounterSection extends StatefulWidget {
  const CartCounterSection({Key? key}) : super(key: key);

  @override
  _CartCounterSectionState createState() => _CartCounterSectionState();
}

class _CartCounterSectionState extends State<CartCounterSection> {
  int numberOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 40,
          height: 32,
          child: buildOutlineButton(
            icon: Icons.remove,
            doPress: () {
              if (numberOfItems > 1) {
                setState(() {
                  numberOfItems--;
                });
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            // if our item is less  then 10 then  it shows 01 02 like that
            numberOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutlineTextButton(
            icon: Icon(Icons.add),
            doPress: () {
              setState(() {
                numberOfItems++;
              });
            }),
      ],
    );
  }

  SizedBox buildOutlineButton({IconData? icon, VoidCallback? doPress}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlineButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
        onPressed: doPress,
        child: Icon(icon),
      ),
    );
  }

  SizedBox buildOutlineTextButton({Widget? icon, VoidCallback? doPress}) {
    return SizedBox(
      width: 50,
      height: 32,
      child: TextButton(
        child: icon!,
        style: TextButton.styleFrom(
          primary: Colors.black,
          backgroundColor: Colors.white,
          side: BorderSide(color: Colors.black26, width: 1),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          minimumSize: Size(50, 10),
          padding: EdgeInsets.zero,
          //elevation: 20,
          //shadowColor: Colors.red,
          // shape: const BeveledRectangleBorder(
          //     borderRadius: BorderRadius.all(Radius.circular(13))),
        ),
        onPressed: doPress,
      ),
    );
  }
}

