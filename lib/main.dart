import 'package:dhruvil_paresh_gosalia/Screens/splashscreen.dart';
import 'package:dhruvil_paresh_gosalia/pages/homepage.dart';
import 'package:dhruvil_paresh_gosalia/pages/loginpage.dart';
import 'package:dhruvil_paresh_gosalia/utils/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      initialRoute: MyRoutes.splashRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.splashRoute: (context) => SplashScreen()
      },
    );
  }
}
