// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mega/constants/colors.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      // height: 41,
      decoration: BoxDecoration(
        color: kWhiteLight,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: "Search product",
          hintStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
          prefixIcon: Icon(Icons.search),

        ),
        autofocus: false,
      ),
    );
  }
}
