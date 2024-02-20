// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mega/constants/colors.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String? text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 57,
      child: TextButton(
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        // color: kPrimaryColor,
        style: TextButton.styleFrom(
          backgroundColor: kMainColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        onPressed: () {
          press!();
        },
        child: Text(
          text!,
          style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
