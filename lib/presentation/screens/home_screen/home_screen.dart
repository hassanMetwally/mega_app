// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

import '../../../constants/enums.dart';
import '../../widgets/custom_navigation_bar.dart';
import '../../widgets/vertical_prodcts_section.dart';
import 'components/categories_offer_section.dart';
import 'components/categories_section.dart';
import 'components/home_heder.dart';
import 'components/offer_section.dart';
import '../../widgets/horizontal_products_section.dart';
import 'components/section_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              buildHomeHeader(),
              SizedBox(height: 8),
              OffersSection(),
              SizedBox(height: 20),
              buildCategoriesSection(),
              buildCategoriesOfferSection(),
              SizedBox(height: 23),
              HorizontalProductsSection(title: 'Flash Sale',),
              SizedBox(height: 23),
              VerticalProductsSection(title: 'You May Like',),
            ],
          ),
        ),
      ),
       bottomNavigationBar: CustomNavigationBar(selectedMenu: MenuState.home),
    );
  }




}
