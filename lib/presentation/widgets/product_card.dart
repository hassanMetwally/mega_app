// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:mega/constants/colors.dart';
import 'package:mega/constants/settings.dart';
import 'package:provider/provider.dart';

import '../../business_logic/provider/product.dart';
import '../screens/details_screen/details_screen.dart';
import 'favourite_adding_button.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.width = 140,
    this.aspectRatio = 1.02,
  }) : super(key: key);

  final double width, aspectRatio;

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);

    return Padding(
      padding: EdgeInsets.only(right:20),
      child: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, detailsScreenRoute, arguments: ProductDetailsArguments(product: product) );
        },
        child: SizedBox(
          width: width,
          child: Column(
            children: [
              Stack(
                children: [
                  AspectRatio(
                    aspectRatio: aspectRatio,
                    child: Container(
                      decoration: BoxDecoration(
                          color: kWhiteLight,
                          ),
                      child: Image.asset(product.images[0],fit: BoxFit.fitWidth,),
                    ),
                  ),
                  Positioned(
                    top: 3,
                    left: 3,
                    child: FavouriteAddingButton(product: product),
                  )
                ],
              ),
              SizedBox(height: 10),
              Text(
                product.title,
                style: TextStyle(fontSize:12,color: Colors.black,fontWeight: FontWeight.w700),
                maxLines: 2,
              ),
              Row(
                children: [
                  Text(
                    '100\$',
                    style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        decorationColor: kNeutralGray, // Set strikethrough color
                        decorationThickness: 2,
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: kNeutralGray),
                  ),
                  SizedBox(width: 8,),
                  Text(
                    '${product.price}\$',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: kMainColor),
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

