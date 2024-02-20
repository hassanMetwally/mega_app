// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mega/constants/colors.dart';
import '../../../widgets/custom_svg_icon.dart';
import '../../../../constants/form_error.dart';
import '../../../../constants/settings.dart';
import '../../../widgets/default_button.dart';

class registerForm extends StatefulWidget {
  const registerForm({super.key});

  @override
  State<registerForm> createState() => _registerFormState();
}

class _registerFormState extends State<registerForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildNameTextFormField(),
          SizedBox(height: 8),
          buildEmailTextFormField(),
          SizedBox(height: 16),
          buildPhoneTextFormField(),
          SizedBox(height: 16),
          buildPasswordTextFormField(),
          SizedBox(height: 16),
          buildConfirmPasswordTextFormField(),
          SizedBox(height: 45),
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

  TextFormField buildNameTextFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        hintText: "Full Name",
        hintStyle: TextStyle(color: kNeutralGray, fontWeight: FontWeight.w400),
        errorStyle: TextStyle(fontWeight: FontWeight.w700),
        contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 13),
        prefixIcon: CustomSvgIcon(svgIcon: 'assets/icons/User.svg'),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return kNameNullError;
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

  TextFormField buildEmailTextFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: "Your email",
        hintStyle: TextStyle(color: kNeutralGray, fontWeight: FontWeight.w400),
        errorStyle: TextStyle(fontWeight: FontWeight.w700),
        contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 13),
        prefixIcon: CustomSvgIcon(svgIcon: 'assets/icons/Message.svg'),
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
        hintStyle: TextStyle(color: kNeutralGray, fontWeight: FontWeight.w400),
        errorStyle: TextStyle(fontWeight: FontWeight.w700),
        contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 13),
        prefixIcon: CustomSvgIcon(svgIcon: 'assets/icons/Password.svg'),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return kPassNullError;
        } else if (value.length < 8) {
          return kShortPassError;
        }
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
        } else if (value.length >= 8) {}
      },
    );
  }

  TextFormField buildConfirmPasswordTextFormField() {
    return TextFormField(
      onSaved: (newValue) => password = newValue,
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Confirm password",
        hintStyle: TextStyle(color: kNeutralGray, fontWeight: FontWeight.w400),
        errorStyle: TextStyle(fontWeight: FontWeight.w700),
        contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 13),
        prefixIcon: CustomSvgIcon(svgIcon: 'assets/icons/Password.svg'),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return kPassNullError;
        } else if (value.length < 8) {
          return kShortPassError;
        }
        return null;
      },
      onChanged: (value) {
        if (value.isNotEmpty) {
        } else if (value.length >= 8) {}
      },
    );
  }

  TextFormField buildPhoneTextFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: "Phone Number",
        hintStyle: TextStyle(color: kNeutralGray, fontWeight: FontWeight.w400),
        errorStyle: TextStyle(fontWeight: FontWeight.w700),
        contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 13),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomSvgIcon(svgIcon: 'assets/icons/phone2.svg'),
        ),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return kPhoneNumberNullError;
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
}
