import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSvgIcon extends StatelessWidget {
  final String svgIcon;

  const CustomSvgIcon({
    required this.svgIcon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: SvgPicture.asset(
        svgIcon,
      ),
    );
  }
}
