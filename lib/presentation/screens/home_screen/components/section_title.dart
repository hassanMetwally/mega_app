// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mega/constants/colors.dart';


class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
              fontSize: 16, color: kMainColor,fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
