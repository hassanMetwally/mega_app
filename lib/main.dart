import 'package:flutter/material.dart';
import 'package:mega/app_router.dart';
import 'package:mega/theme.dart';
import 'package:provider/provider.dart';

import 'business_logic/provider/cart.dart';
import 'business_logic/provider/products.dart';
void main() {
  runApp( Mega(appRouter: AppRouter()));
}

class Mega extends StatelessWidget {
  final AppRouter appRouter;
  Mega({required this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: themeData(),
        onGenerateRoute: appRouter.generateRoute,),
    );
  }
}
