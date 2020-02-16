import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_ui/insta_ui/utils/constants.dart';
import 'package:insta_ui/my_flutter_app_icons.dart';

class Feed extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FeedState();
  }
}

class FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:   Icon(Icons.linked_camera),
        title: Text(Constants.instagram,style: GoogleFonts.openSans(fontSize: 20,color: Colors.white),),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 17.0),
            child: Icon(MyFlutterApp.near_me,),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[

          ],
        ),
      ),
    );
  }
}

Widget StorySection(){

}