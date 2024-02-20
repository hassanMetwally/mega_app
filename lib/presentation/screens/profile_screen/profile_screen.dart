// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:mega/constants/colors.dart';

import '../../../constants/enums.dart';
import '../../../constants/settings.dart';
import '../../widgets/custom_navigation_bar.dart';
import '../../widgets/screen_header.dart';
import 'components/profile_menu_body.dart';
import 'package:flutter_svg/svg.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ScreenHeader(
              headerName: 'Profile',
              press: () {
                Navigator.pushNamed(context, accountScreenRoute);
              },
            ),
            SizedBox(height: 15,),
            buildProfileHeader(),
            ProfileMenuBody(),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(
        selectedMenu: MenuState.account,
      ),
    );
  }

  Widget buildProfileHeader() {
    return Row(
      children: [
        SizedBox(width: 26),
        Container(
          height: 80,
          width: 80,
          child: ClipOval(
            child: Image.asset(
              'assets/images/Profile Picture.png',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 16),
        Column(
          children: [
            Text(
              'Dominic Ovo',
              style: TextStyle(
                  color: kNeutralDark,
                  fontSize: 14,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 5),
            Text(
              '@dominic_ovo',
              style: TextStyle(
                  color: kNeutralGray,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
            ),
          ],
        )
      ],
    );
  }
}
