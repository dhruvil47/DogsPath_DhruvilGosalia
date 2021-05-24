import 'package:dhruvil_paresh_gosalia/model/usermodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class PathList extends StatelessWidget {
  final UserModel user;

  const PathList({Key key, @required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: user.title != null
              ? user.title.text.xl.bold.make()
              : "".text.make(),
          subtitle: user.subPaths.length == null
              ? "0".text.textStyle(context.captionStyle).make()
              : "${user.subPaths.length} Sub Paths"
                  .text
                  .textStyle(context.captionStyle)
                  .make(),
          trailing: Container(
            width: 100,
            height: 25,
            color: Colors.black,
            alignment: Alignment.center,
            child: "Open Path".text.blue400.lg.make(),
          ),
        ),
        VxSwiper.builder(
            //aspectRatio: 2.0,
            viewportFraction: 1.0,
            itemCount: user.subPaths.length,
            itemBuilder: (context, index) {
              //final img = user.subPaths[index];
              return VxBox(
                      child: ZStack([
                Align(
                  alignment: Alignment.bottomLeft,
                  child: VStack([
                    ListTile(
                      title: user.subPaths[index].title.text.xl.semiBold.white
                          .make(),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          "Swipe Image for next Path"
                              .text
                              .size(10)
                              .white
                              .make(),
                          Icon(CupertinoIcons.arrow_right),
                        ],
                      ),
                      tileColor: Colors.black,
                    )
                  ]),
                )
              ]))
                  .bgImage(DecorationImage(
                      fit: BoxFit.fill,
                      // colorFilter: ColorFilter.mode(
                      //     Colors.black.withOpacity(0.3),
                      //     BlendMode.darken),
                      image: NetworkImage(user.subPaths[index].image)))
                  .make();
            })
      ],
    );
  }
}
