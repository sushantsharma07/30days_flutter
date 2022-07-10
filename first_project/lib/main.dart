import 'package:first_project/pages/cart_page.dart';
import 'package:first_project/pages/home_page.dart';
import 'package:first_project/pages/login.dart';
import 'package:first_project/pages/widgets/theme.dart';
import 'package:first_project/utils/routs.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  get routes => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: MyTheme.lightTheme(context),
        darkTheme: MyTheme.darkTheme(context),
        debugShowCheckedModeBanner: false,
        initialRoute: MyRoutes.homeRoute,
        routes: {
          "/": (context) => Login(),
          MyRoutes.loginRoute: (context) => Login(),
          MyRoutes.homeRoute: (context) => HomePage(),
          MyRoutes.cartRoute: (context) => CartPage(),
        });
  }
}
