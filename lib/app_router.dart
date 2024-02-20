// ignore_for_file: prefer_const_constructors, unreachable_switch_case

import 'package:flutter/material.dart';
import 'package:mega/presentation/screens/accont_screen/accont_screen.dart';
import 'package:mega/presentation/screens/cart_screen/cart_screen.dart';
import 'package:mega/presentation/screens/details_screen/details_screen.dart';
import 'package:mega/presentation/screens/favourit_screen/favourites_screen.dart';
import 'package:mega/presentation/screens/forget_password_screen/forget_password_screen.dart';
import 'package:mega/presentation/screens/login_screen/login_screen.dart';
import 'package:mega/presentation/screens/profile_screen/profile_screen.dart';
import 'package:mega/presentation/screens/register_screen/register_screen.dart';

import 'constants/settings.dart';
import 'presentation/screens/home_screen/home_screen.dart';
import 'presentation/screens/splash_screen/splash_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreenRoute:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case logInScreenRoute:
        return MaterialPageRoute(builder: (_) => LogInScreen());
      case registerScreenRoute:
        return MaterialPageRoute(builder: (_) => RegisterScreen());
      case forgetPasswordScreenRoute:
        return MaterialPageRoute(builder: (_) => ForgetPasswordScreen());
      case homeScreenRoute:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case accountScreenRoute:
        return MaterialPageRoute(builder: (_) => AccountScreen());
      case profileScreenRoute:
        return MaterialPageRoute(builder: (_) => ProfileScreen());
      case cartScreen:
        return MaterialPageRoute(builder: (_) => CartScreen());
      case favouritesScreen:
        return MaterialPageRoute(builder: (_) => FavouritesScreen());
      case detailsScreenRoute:
        return MaterialPageRoute(builder: (context) {
          final args = settings.arguments as ProductDetailsArguments;
          return DetailsScreen(
            args: args,
          );
        });
    }
  }
}
