// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mega/constants/colors.dart';

import '../../constants/enums.dart';
import '../../constants/settings.dart';

class CustomNavigationBar extends StatelessWidget {
  CustomNavigationBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 70,
            child: Column(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, homeScreenRoute);
                  },
                  icon: SvgPicture.asset(
                    'assets/icons/Home.svg',
                    color: selectedMenu == MenuState.home
                        ? kDarkGray
                        : kNeutralGray,
                  ),
                ),
                Text(
                  'Home',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          SizedBox(
            height: 70,
            child: Column(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, accountScreenRoute);
                    },
                    icon: SvgPicture.asset(
                      'assets/icons/User.svg',
                      color: selectedMenu == MenuState.account
                          ? kDarkGray
                          : kNeutralGray,
                    )),
                Text(
                  'Account',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          SizedBox(
            height: 70,
            child: Column(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, homeScreenRoute);
                    },
                    icon: SvgPicture.asset(
                      'assets/icons/Offer.svg',
                      color: selectedMenu == MenuState.offers
                          ? kDarkGray
                          : kNeutralGray,
                    )),
                Text(
                  'Offers',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          SizedBox(
            height: 70,
            child: Column(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, favouritesScreen);
                    },
                    icon: SvgPicture.asset(
                      'assets/icons/fav.svg',
                      color: selectedMenu == MenuState.favourite
                          ? kDarkGray
                          : kNeutralGray,
                    )),
                Text(
                  'Favourite',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
