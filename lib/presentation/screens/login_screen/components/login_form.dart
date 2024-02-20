// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mega/constants/colors.dart';
import '../../../widgets/custom_svg_icon.dart';
import '../../../../constants/form_error.dart';
import '../../../../constants/settings.dart';
import '../../../widgets/default_button.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailTextFormField(),
          SizedBox(height: 8),
          buildPasswordTextFormField(),
          SizedBox(height: 16),
          DefaultButton(
            text: 'Sign In',
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                //if all are valid go to success screen
                Navigator.pushNamed(context, homeScreenRoute);
              }
            },
          )

        ],
      ),
    );
  }

  TextFormField buildEmailTextFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: "Enter your email",
        hintStyle: TextStyle(color: kNeutralGray,fontWeight: FontWeight.w400),
        errorStyle: TextStyle(fontWeight: FontWeight.w700),
        contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 13),
          prefixIcon:  CustomSvgIcon(svgIcon:'assets/icons/Message.svg'),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return kEmailNullError;
        } else if (!kEmailValidatorRegExp.hasMatch(value)) {
          return kInvalidEmailError;
        }
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
        } else if (kEmailValidatorRegExp.hasMatch(value)) {}
      },
      onSaved: (newValue) => email = newValue,
    );
  }

  TextFormField buildPasswordTextFormField() {
    return TextFormField(
      onSaved: (newValue) => password = newValue,
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Password",
        hintStyle: TextStyle(color: kNeutralGray,fontWeight: FontWeight.w400),
        errorStyle: TextStyle(fontWeight: FontWeight.w700),
        contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 13),
        prefixIcon: CustomSvgIcon(svgIcon:'assets/icons/Password.svg'),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return kPassNullError;
        }else if (value.length < 8 ) {
          return kShortPassError;
        }
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty) {

        } else if (value.length >= 8 ) {

        }
      },
    );
  }
}
