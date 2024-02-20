// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:mega/presentation/widgets/screen_header.dart';
import 'package:provider/provider.dart';
import '../../../business_logic/provider/cart.dart';
import '../../../constants/colors.dart';
import '../../../constants/settings.dart';
import 'components/cart_body.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    final cartItems = cart.items;
    int cartLength = cartItems.length;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(

            children: [
              ScreenHeader(
                headerName: 'Your Cart',
                press: () {
                  Navigator.pushNamed(context, homeScreenRoute);
                },
              ),
              CartBody(cart: cart),
              // Container(
              //   child: Row(
              //     children: [
              //       Text('Total Price'),
              //       Spacer(),
              //       Text('300\$'),
              //     ],
              //   ),
              //   padding: EdgeInsets.all(12),
              //   decoration: BoxDecoration(
              //     border: Border.all(
              //       color: kNeutralLight,
              //       width: 1.2,
              //     ),
              //     borderRadius: BorderRadius.circular(5),
              //   ),
              // ),
            ],
          ),

        ),
      ),
    );
  }
}
