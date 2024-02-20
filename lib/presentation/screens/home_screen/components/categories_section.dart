// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';

Widget buildCategoriesSection() {
  final List<Map<String, String>> categoriesData = [
    {"text": "Category Name", "image": "assets/images/3.png"},
    {"text": "Category Name", "image": "assets/images/2.png"},
    {"text": "Category Name", "image": "assets/images/6.png"},
    {"text": "Category Name", "image": "assets/images/5.jpg"},
  ];

  return SizedBox(
    width: double.infinity,
    height: 150,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 80,
                width: 80,
                child: ClipOval(
                  child: Image.asset(
                    categoriesData[index]['image']!,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(
                  width: 90,
                  child: Text(
                    categoriesData[index]['text']!,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: kDarkGray,fontSize: 12,fontWeight: FontWeight.w400),
                  )),
            ],
          );
        }),
  );
}
