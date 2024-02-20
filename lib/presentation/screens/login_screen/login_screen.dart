// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:mega/constants/settings.dart';

import '../../../constants/colors.dart';
import '../../widgets/login_with_button.dart';
import 'components/login_form.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                buildHeaderSection(),
                SizedBox(height: 28),
                LoginForm(),
                SizedBox(height: 21),
                buildDividerSection(),
                SizedBox(height: 16),
                buildLoginWithSection(),
                SizedBox(height: 21),
                buildScreenFooter(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildHeaderSection() {
    return Column(
      children: [
        SizedBox(
          height: 100,
        ),
        Container(
          padding: EdgeInsets.only(left: 40),
          child: Center(
              child: Image.asset(
            'assets/images/mega.png',
            width: 318,
            height: 86,
          )),
        ),
        SizedBox(
          height: 28,
        ),
        Text(
          'Welcome  to MEGA Store',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 16, color: kNeutralDark),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          'Sign in to continue',
          style: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 12, color: kNeutralGray),
        )
      ],
    );
  }

  Widget buildDividerSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            color: kNeutralGray,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            'OR',
            style: TextStyle(
              color: kNeutralGray,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: Divider(
            color: kNeutralGray,
          ),
        ),
      ],
    );
  }

  Widget buildLoginWithSection() {
    return Column(
      children: [
        LoginWithButton(name: 'Google', svgIcon: 'assets/icons/Google.svg'),
        SizedBox(height: 8),
        LoginWithButton(
          name: 'Facebook',
          svgIcon: 'assets/icons/Facebook.svg',
        ),
      ],
    );
  }

  Widget buildScreenFooter(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, forgetPasswordScreenRoute);
            },
            child: Text(
              'Forgot Password?',
              style: TextStyle(
                  fontSize: 12, fontWeight: FontWeight.w700, color: kMainColor),
            )),
        SizedBox(height: 3),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have an account? ",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: kNeutralGray,
              ),
            ),
            GestureDetector(
              child: Text(
                "Register",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: kMainColor,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, registerScreenRoute);
              },
            )
          ],
        ),
      ],
    );
  }
}
