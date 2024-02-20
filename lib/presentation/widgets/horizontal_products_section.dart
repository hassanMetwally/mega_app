// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../business_logic/provider/products.dart';
import 'product_card.dart';
import '../screens/home_screen/components/section_title.dart';

class HorizontalProductsSection extends StatelessWidget {
  final String title;

  const HorizontalProductsSection({super.key, required this.title});
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
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...List.generate(
                products.length,
                (index) => ChangeNotifierProvider.value(
                  value: products[index],
                  child: ProductCard(),
                ),
              ),
              SizedBox(width:20),
            ],
          ),
        ),
      ],
    );
  }
}
