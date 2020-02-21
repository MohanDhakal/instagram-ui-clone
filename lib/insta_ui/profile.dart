import 'package:flutter/material.dart';
import 'package:insta_ui/insta_clone_icons.dart';
import 'package:insta_ui/insta_ui/utils/constants.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Profile"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(8.0),
                  child: ClipRRect(
                    child: Image.asset(
                      'images/mohan.jpg',
                      height: 80,
                      width: 80,
                    ),
                    borderRadius: BorderRadius.circular(64),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Text(
                        "mohandkl.512",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 30,
                      margin: EdgeInsets.only(left: 50, top: 15),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueGrey, width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 70.0, top: 8),
                        child: Text(
                          "Edit Profile",
                          style: TextStyle(fontSize: Constants.textSize,fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Mohan Dhakal",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      "This is the test application for the Ui for the instagram and very excited to learn more as a group here"),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.circular(28.0)),
                      child: ClipRRect(
                        child: Image.asset(
                          'images/argentina.jpg',
                          height: 50,
                          width: 50,
                        ),
                        borderRadius: BorderRadius.circular(28),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text("#argentina fc"),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.circular(28.0)),
                      child: ClipRRect(
                        child: Image.asset(
                          'images/messi.jpg',
                          height: 50,
                          width: 50,
                        ),
                        borderRadius: BorderRadius.circular(28),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text("#fcb"),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1,
                  color: Colors.white,
                  margin:
                      EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          "9",
                          style: TextStyle(
                              fontSize: Constants.numberSize,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "posts",
                          style: TextStyle(fontSize: Constants.textSize),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          "164",
                          style: TextStyle(
                              fontSize: Constants.numberSize,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "followers",
                          style: TextStyle(fontSize: Constants.textSize),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          "219",
                          style: TextStyle(
                              fontSize: Constants.numberSize,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "following",
                          style: TextStyle(fontSize: Constants.textSize),
                        )
                      ],
                    ),
                  ],
                ),
                Container(
                  //todo: for line
                  width: MediaQuery.of(context).size.width,
                  height: 1,
                  color: Colors.white,
                  margin:
                      EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                )
              ],
            ),
          ),
          SelectionWidget(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset(
                    'images/mohan.jpg',
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'images/second.jpeg',
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'images/messi.jpg',
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset(
                    'images/mohan.jpg',
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'images/first.png',
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'images/messi.jpg',
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Color changedColor = Colors.white;
  bool flag;

  Widget SelectionWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.view_day),
          color: changedColor,
          onPressed: () {
            flag = !flag;
            if (!flag) {
              setState(() {
                changedColor = Colors.blue;
              });
              flag = true;
            }
          },
        ),
        IconButton(
          icon: Icon(InstaClone.grid),
          color: changedColor,
          onPressed: () {
            if (!flag) {
              setState(() {
                changedColor = Colors.blue;
              });
            }
          },
        ),
        IconButton(
          icon: Icon(InstaClone.bookmark_empty),
          color: changedColor,
          onPressed: () {
            if (!flag) {
              setState(() {
                changedColor = Colors.blue;
              });
            }
          },
        ),
        IconButton(
          icon: Icon(Icons.perm_contact_calendar),
          color: changedColor,
          onPressed: () {
            if (!flag) {
              setState(() {
                changedColor = Colors.blue;
              });
            }
          },
        ),
      ],
    );
  }
}
