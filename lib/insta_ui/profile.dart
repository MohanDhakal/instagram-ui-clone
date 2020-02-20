import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Image.asset('images/mohan.jpg'),
                Column(
                  children: <Widget>[
                    Text(""),
                    Container(
                      child: Text(""),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Text(""),
                Text("")
              ],
            ),
          ),
          Container(
            child:
            Row(
              children: <Widget>[
                Image.asset(""),
                Image.asset(""),
                Image.asset("")
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  //todo: for line

                ),
                Row(
                  //todo for stories
                ),
                Container(
                  //todo for line
                )
              ],
            ),
          ),
          Container(
            child:Column(
              children: <Widget>[
                Row(
                  //for multiple selection g child
                ),
                Container(
                 //todo: for posts in gridview and listview also bookmarks
                )
              ],
            )
          )
        ],
      ),
    );
  }
}
