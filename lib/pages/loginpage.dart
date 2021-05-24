import 'package:dhruvil_paresh_gosalia/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isloggedin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          "Sign In".text.white.xl2.makeCentered(),
          15.heightBox,
          "Sign in with your facebook account".text.xl.white.makeCentered(),
          15.heightBox,
          Center(
            child: ElevatedButton(
                onPressed: () async {
                  final LoginResult result = await FacebookAuth.instance
                      .login(); // by default we request the email and the public profile
                  if (result.status == LoginStatus.success) {
                    setState(() {
                      _isloggedin = true;
                    });
                  } else {
                    Text("Error");
                  }
                  if (_isloggedin == true) {
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  }
                },
                child: Text("Login with Facebook")),
          )
        ],
      ),
    );
  }
}
