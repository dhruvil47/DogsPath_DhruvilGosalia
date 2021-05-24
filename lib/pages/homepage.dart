import 'dart:convert';

import 'package:dhruvil_paresh_gosalia/Home_widgets/pathlist.dart';
import 'package:dhruvil_paresh_gosalia/model/usermodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final url = "https://5d55541936ad770014ccdf2d.mockapi.io/api/v1/paths";

  Future<List<UserModel>> loadData(BuildContext context) async {

    // final response = await http.get(Uri.parse(url));
    // final jsonString = response.body;

    final jsonString = await DefaultAssetBundle.of(context)
        .loadString("assets/files/path.json");

    return userModelFromJson(jsonString);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dog's Path"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: Container(),
      ),
      body: Container(
        child: FutureBuilder(
          future: loadData(context),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  UserModel user = snapshot.data[index];
                  return PathList(user: user);
                },
              );
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
