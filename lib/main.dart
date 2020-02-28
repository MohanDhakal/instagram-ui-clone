import 'package:flutter/material.dart';
import 'package:insta_ui/insta_ui/activity.dart';
import 'package:insta_ui/insta_ui/direct_detaill.dart';
import 'package:insta_ui/insta_ui/homescreen.dart';
import 'package:insta_ui/insta_ui/insta_direct.dart';
import 'package:insta_ui/insta_ui/profile.dart';
import 'package:insta_ui/insta_ui/search.dart';
import 'package:insta_ui/insta_ui/storydetail.dart';
import 'package:insta_ui/scroll_test.dart';
import 'package:insta_ui/test.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        darkTheme: ThemeData.dark(),
        routes: {
          Feed.routeName: (context) => Feed(),
          InstaDirect.routeName: (context) => InstaDirect()
        },
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        initialRoute: Feed.routeName,
    );
  }
/*
    Feed route is for home page, clicking on first story will show it's deatail
    Activity route is to show notification  and
    Profile route is to show insta profile,based on Web version
    */

}
