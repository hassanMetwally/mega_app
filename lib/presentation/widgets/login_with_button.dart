// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import 'custom_svg_icon.dart';

class LoginWithButton extends StatelessWidget {
  final String svgIcon;
  final String name;

  const LoginWithButton({super.key, required this.svgIcon, required this.name});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 3),
        child: Row(
          children: [
            CustomSvgIcon(svgIcon: '$svgIcon'),
            Expanded(
              child: Center(
                  child: Text(
                    'Login with $name',
                    style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: kNeutralGray),
                  )),
            )
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: kNeutralLight, // Border color
            width: 2.0, // Border width
          ),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
