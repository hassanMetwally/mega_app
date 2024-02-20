// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../widgets/menu_item.dart';

class ProfileMenuBody extends StatelessWidget {
  const ProfileMenuBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          children: [
            MenuItem(
              text: 'Email',
              icon: 'assets/icons/Message.svg',
              press: () {},
            ),
            MenuItem(
              text: 'Phone Number',
              icon: 'assets/icons/Phone.svg',
              press: () {},
            ),
            MenuItem(
              text: 'Change Password',
              icon: 'assets/icons/Password.svg',
              press: () {},
            ),
            MenuItem(
              text: 'Change Long',
              icon: 'assets/icons/Home.svg',
              press: () {},
            ),

          ],
        ),
      ),
    );
  }
}
