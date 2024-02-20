// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mega/constants/colors.dart';
import '../../../../constants/constants.dart';

class ProductImagesSection extends StatefulWidget {
  final List<String> offersData;

  const ProductImagesSection({super.key, required this.offersData});

  @override
  State<ProductImagesSection> createState() => _ProductImagesSectionState();
}

class _ProductImagesSectionState extends State<ProductImagesSection> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 360,
          child: PageView.builder(
            itemCount: widget.offersData.length,
            itemBuilder: (context, index) => OffersContent(
              image: widget.offersData[index]!,
            ),
            onPageChanged: (value) {
              setState(() {
                currentPage = value;
              });
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              widget.offersData.length,
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
        color: currentPage == index ? kMainColor : kNeutralGray,
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
          height: 350,
          fit: BoxFit.contain,
        )
      ],
    );
  }
}
