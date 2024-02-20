// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../business_logic/provider/products.dart';
import '../../../widgets/product_card.dart';


class FavouritesBody extends StatelessWidget {
  const FavouritesBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final products = Provider.of<Products>(context).favoriteItems;
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 20),
          GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 1,
                mainAxisSpacing: .5,
              ),
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ChangeNotifierProvider.value(
                  value: products[index],
                  child: ProductCard(width: 335,aspectRatio: 1.5,),
                );
              }),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
