import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../business_logic/provider/cart.dart';
import '../../../../constants/settings.dart';
import '../../../widgets/icon_btn_with_counter.dart';
import '../../../widgets/search_field.dart';

Widget buildHomeHeader() {
  return Padding(
    padding: EdgeInsets.only(top: 60, left: 15, right: 15, bottom: 14),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SearchField(),
        Consumer<Cart>(
          builder: (context, cart, child) {
            return IconBtnWithCounter(
              svgSrc: "assets/icons/Cart.svg",
              press: () {
                Navigator.pushNamed(context, cartScreen);
              },
              numOfItems: cart.items.length,
            );
          },
          //child: ,
        ),
      ],
    ),
  );
}
