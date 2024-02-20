// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:mega/constants/settings.dart';

import '../../../constants/colors.dart';
import '../../widgets/login_with_button.dart';
import 'components/register_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

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
                registerForm(),
                SizedBox(height: 30),
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
          'Let’s Get Started',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 16, color: kNeutralDark),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          'Create an new account',
          style: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 12, color: kNeutralGray),
        )
      ],
    );
  }
  Widget buildScreenFooter(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Have an account? ",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: kNeutralGray,
          ),
        ),
        GestureDetector(
          child: Text(
            "Sing In",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: kMainColor,
            ),
          ),
          onTap: () {
            Navigator.pushNamed(context, logInScreenRoute);
          },
        )
      ],
    );
  }

}

