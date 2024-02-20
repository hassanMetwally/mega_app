// ignore_for_file: prefer_const_constructors, unnecessary_overrides, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mega/constants/settings.dart';
import 'package:mega/presentation/widgets/default_button.dart';
import 'package:mega/presentation/widgets/favourite_adding_button.dart';
import 'package:provider/provider.dart';
import '../../../business_logic/provider/cart.dart';
import '../../../business_logic/provider/product.dart';
import '../../../constants/colors.dart';
import '../../widgets/screen_header.dart';
import '../../widgets/horizontal_products_section.dart';
import 'components/product_images_section.dart';

class DetailsScreen extends StatelessWidget {
  final ProductDetailsArguments args;

  const DetailsScreen({super.key, required this.args});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context, listen: false);
    return Scaffold(
      // body: Body(product: args.product,),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ScreenHeader(
                  headerName: args.product.title!,
                  press: () {
                    Navigator.pushNamed(context, homeScreenRoute);
                  }),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    ProductImagesSection(offersData: args.product.images!),
                    SizedBox(height: 3),
                    buildProductTitleSection(args),
                    SizedBox(height: 16),
                    buildProductPriceSection(args),
                    SizedBox(height: 16),
                    buildProductDetailsSection(args),
                    SizedBox(height: 16),
                    HorizontalProductsSection(
                      title: 'You May Also Like',
                    ),
                    SizedBox(height: 16),
                    DefaultButton(
                        text: 'Add To Card',
                        press: () {
                          cart.addItem(
                              args.product.id.toString(),
                              args.product.title,
                              args.product.images[0],
                              args.product.price);
                        }),
                    SizedBox(height: 25),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildProductTitleSection(ProductDetailsArguments args) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 200,
          child: Text(
            args.product.title!,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Color.fromRGBO(51, 53, 55, 1),
            ),
          ),
        ),
        FavouriteAddingButton(product: args.product),
      ],
    );
  }

  Widget buildProductPriceSection(ProductDetailsArguments args) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '${args.product.price!.toString()} \$',
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Color.fromRGBO(80, 85, 92, 1)),
        ),
        Row(
          children: [
            Text(
              '200 \$',
              style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  decorationColor: kNeutralGray,
                  // Set strikethrough color
                  decorationThickness: 2,
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  color: kNeutralGray),
            ),
            SizedBox(width: 8),
            Text(
              '25% Off',
              style: TextStyle(
                  fontWeight: FontWeight.w700, fontSize: 13, color: Colors.red),
            ),
          ],
        )
      ],
    );
  }

  Widget buildProductDetailsSection(ProductDetailsArguments args) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Details',
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: Color.fromRGBO(245, 126, 46, 1)),
        ),
        SizedBox(height: 13),
        Text(
          '${args.product.description!.toString()} \$',
          style: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 14, color: kNeutralGray),
        ),
      ],
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
