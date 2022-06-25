import 'package:first_project/pages/home_page.dart';
import 'package:first_project/pages/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  get routes => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        themeMode: ThemeMode.light,
        darkTheme: ThemeData(brightness: Brightness.dark),
        initialRoute: "/home",
        routes: {
          "/home": (context) => HomePage(),
          "/login": (context) => Login()
        });
  }
}
