import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../business_logic/provider/product.dart';

class FavouriteAddingButton extends StatelessWidget {
  const FavouriteAddingButton({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          product.toggleFavoriteStatus();
        },
        borderRadius:
        BorderRadius.circular(30),
        child: Container(
          padding: EdgeInsets.all(8),
          width: 37,
          height: 37,
          child: SvgPicture.asset("assets/icons/fav.svg",
              color: product.isFavourite
                  ? Color(0xFFFF4848)
                  : Colors.white),
        ));
  }
}
