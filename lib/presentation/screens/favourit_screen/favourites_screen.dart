// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:mega/presentation/widgets/screen_header.dart';

import '../../../constants/enums.dart';
import '../../widgets/custom_navigation_bar.dart';
import 'components/favourites_body.dart';
import 'package:flutter/material.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              ScreenHeader(headerName: 'Your Favorites'),
              FavouritesBody(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(selectedMenu: MenuState.favourite,),
    );
  }
}
