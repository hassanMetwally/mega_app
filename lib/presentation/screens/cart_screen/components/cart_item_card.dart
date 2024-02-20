// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mega/constants/colors.dart';
import 'package:mega/presentation/widgets/favourite_adding_button.dart';
import 'package:provider/provider.dart';

import '../../../../business_logic/provider/cart.dart';
import '../../../../data/models/cart_item.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    required this.productId,
    required this.cartItem,
  });

  final String productId;
  final CartItem cartItem;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(productId),
      direction: DismissDirection.endToStart,
      background: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Color(0xFFFFE6E6),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Spacer(),
            SvgPicture.asset('assets/icons/Trash.svg'),
          ],
        ),
      ),
      child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Container(
            child: Row(
              children: [
                SizedBox(
                  width: 80,
                  child: AspectRatio(
                    aspectRatio: .90,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F6F9),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.asset(
                        cartItem.image,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 150,
                      child: Text(
                        cartItem.title,
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color: kNeutralDark),
                      ),
                    ),
                    SizedBox(height: 25),
                    Text(
                      '\$${cartItem.price.toString()}',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                        color: Color.fromRGBO(64, 191, 255, 1),
                      ),
                    ),
                  ],
                ),
                  Spacer(),
                Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset("assets/icons/fav.svg",
                            color: Color(0xFFFF4848)),
                        SizedBox(width: 8),
                        SvgPicture.asset('assets/icons/Trash2.svg')
                      ],
                    ),
                    SizedBox(height: 25),
                    Container(
                      child: Text('x${cartItem.quantity.toString()}',style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                        color: kDarkGray,
                      ),),
                      padding: EdgeInsets.symmetric(vertical: 7,horizontal: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: kNeutralLight
                      ),
                    )
                  ],
                )
              ],
            ),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(
                color: kNeutralLight,
                width: 1.2,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
          )),
      onDismissed: (direction) {
        Provider.of<Cart>(context, listen: false).removeItem(productId);
      },
    );
  }
}
