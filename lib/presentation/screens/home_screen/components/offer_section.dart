// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mega/constants/colors.dart';
import '../../../../constants/constants.dart';

class OffersSection extends StatefulWidget {
  @override
  State<OffersSection> createState() => _OffersSectionState();
}

class _OffersSectionState extends State<OffersSection> {
  int currentPage = 0;

  final List<String> offersData = [
    "assets/images/offers.png",
    "assets/images/offers2.png",
    "assets/images/offers3.png",
    "assets/images/offers.png",
    "assets/images/offers2.png",

  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 150,
          child: PageView.builder(
            itemCount: offersData.length,
            itemBuilder: (context, index) => OffersContent(
              image: offersData[index]!,
            ),
            onPageChanged: (value) {
              setState(() {
                currentPage = value;
              },
              );
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              offersData.length,
              (index) => buildDots(index),
            ),
          ),
        ),
      ],
    );
  }

  AnimatedContainer buildDots(int index) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 9,
      width: currentPage == index ? 9 : 9,
      decoration: BoxDecoration(
        color: currentPage == index ? kDarkGray : kNeutralGray,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}

class OffersContent extends StatelessWidget {
  const OffersContent({
    Key? key,
    required this.image,
  }) : super(key: key);
  final image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          width: double.infinity,
          height: 139,
          fit: BoxFit.fill,
        )
      ],
    );
  }
}
