// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mega/constants/colors.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    Key? key,
    required this.text,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String text, icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      // padding: EdgeInsets.all(20),
      // color: Color(0xFFF5F6F9),
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      style: TextButton.styleFrom(
        foregroundColor: kNeutralLight,
      ),
      onPressed: press,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              width: 22,
              color: kSecondColor,
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  color: kNeutralDark,
                  fontSize: 12,
                  fontWeight: FontWeight.w700
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
