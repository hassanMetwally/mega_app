// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mega/constants/settings.dart';

import '../../../widgets/menu_item.dart';

class AccountMenuBody extends StatelessWidget {
  const AccountMenuBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MenuItem(
            text: 'Profile',
            icon: 'assets/icons/User.svg',
            press: () {
              Navigator.pushNamed(context, profileScreenRoute);
            },
          ),
          MenuItem(
            text: 'My orders',
            icon: 'assets/icons/bag.svg',
            press: () {},
          ),
          MenuItem(
            text: 'Address',
            icon: 'assets/icons/Location.svg',
            press: () {},
          ),
          MenuItem(
            text: 'Log Out',
            icon: 'assets/icons/Logout.svg',
            press: () {},
          ),
          MenuItem(
            text: 'Delete Account',
            icon: 'assets/icons/Trash.svg',
            press: () {},
          )
        ],
      ),
    );
  }
}
