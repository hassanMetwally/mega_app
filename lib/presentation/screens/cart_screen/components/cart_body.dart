// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';

import '../../../../business_logic/provider/cart.dart';
import 'cart_item_card.dart';

class CartBody extends StatelessWidget {
  Cart cart;

  CartBody({required this.cart});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        child: ListView.builder(
            itemCount: cart.items.length,
            itemBuilder: (context, index) {
              return CartItemCard(
                productId: cart.items.keys.toList()[index],
                cartItem: cart.items.values.toList()[index],
              );
            },
          shrinkWrap: true,
        ),
      ),
    );
  }
}
