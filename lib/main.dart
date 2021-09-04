import 'package:flutter/material.dart';
import 'package:flutter_catelog/pages/home_page.dart';
import 'package:flutter_catelog/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage()
      },
    );
  }

  /**
   * You can call without giving value so it takes 100 as a default value, if value is putted
   * so it didnt take 100 as a default value take user input value as a parameter
   */
  function_1({int r = 100}) {}

  /**
   * required is a notation that when we call this function required bool value + not be null
   */
  function_2({@required bool? flag, int rupees = 10}) {}
}
