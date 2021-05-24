import 'dart:async';

import 'package:dhruvil_paresh_gosalia/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
        () => Navigator.pushNamed(context, MyRoutes.loginRoute));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "assets/images/img1.gif",
              height: 150.0,
              width: 150.0,
            ),
          ),
          10.heightBox,
          "Dog's Path".text.xl5.semiBold.gray300.makeCentered(),
          15.heightBox,
          "by".text.size(5).gray300.makeCentered(),
          10.heightBox,
          "VirtouStack Softwares Pvt. Ltd".text.xl2.gray300.makeCentered(),
        ],
      ),
    );
  }
}
