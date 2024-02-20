import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/settings.dart';

class ScreenHeader extends StatelessWidget {
  final String? headerName;
  final Function? press;

  const ScreenHeader({super.key, this.headerName, this.press});




  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 28, ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: GestureDetector(
                  child: SvgPicture.asset(
                    'assets/icons/Left.svg',
                    height: 20,
                    width: 24,
                    color: kNeutralGray,
                  ),
                  onTap: (){
                    press!();
                  },
                ),
              ),
              Text(
                '${headerName}',
                style: TextStyle(
                    fontSize: 16,
                    color: kNeutralDark,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Divider(
          color: kNeutralLight,
          height: 1,
          thickness: 1,
        ),
      ],
    );
  }
}
