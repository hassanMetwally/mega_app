// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';

import '../../../constants/settings.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2),
        () => Navigator.pushNamed(context, logInScreenRoute));

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 31),
        child: Center(
            child: Image.asset(
          'assets/images/mega.png',
          width: 354,
          height: 100,
        )),
      ),
    );
  }
}
