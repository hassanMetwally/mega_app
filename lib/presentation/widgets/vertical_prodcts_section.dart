// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../business_logic/provider/products.dart';
import 'product_card.dart';
import '../screens/home_screen/components/section_title.dart';

class VerticalProductsSection extends StatelessWidget {
  final String title;

  const VerticalProductsSection({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final products = Provider.of<Products>(context).items;

    return Column(
      children: [
        SectionTitle(
          text: title,
        ),
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2 / 3,
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
                  child: ProductCard(),
                );
              }),
        ),
      ],
    );
  }
}
