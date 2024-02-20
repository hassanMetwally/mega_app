// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mega/constants/colors.dart';

import '../../../constants/enums.dart';
import '../../widgets/custom_navigation_bar.dart';
import 'components/account_menu_body.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);
  static String routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            buildAccountScreenHeader(),
            AccountMenuBody(),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(
        selectedMenu: MenuState.account,
      ),
    );
  }

  Widget buildAccountScreenHeader() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Row(
            children: [
              Text(
                'Account',
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
        ),
      ],
    );
  }
}
