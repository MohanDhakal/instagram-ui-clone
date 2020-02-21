import 'package:flutter/material.dart';
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
                      child: Image.asset('images/mohan.jpg',height: 80,width: 80,),
                    borderRadius: BorderRadius.circular(56),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left:50),
                      child: Text("mohandkl.512",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    ),
                    Container(
                      width: 150,
                      height: 40,
                      margin: EdgeInsets.only(left:50,top:10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red,width: 1),
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left:30.0,top:10),
                        child: Text("Edit Profile",style: TextStyle(fontSize: 15),),
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
                  child: Text("Mohan Dhakal",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("This is the test application for the Ui for the instagram and very excited to learn more as a group here"),
                ),
              ],
            ),
          ),
          Container(
            child:
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(color:Colors.white,width: 2.0),
                          borderRadius: BorderRadius.circular(28.0)
                      ),
                      child: ClipRRect(
                        child: Image.asset('images/argentina.jpg',height: 50,width: 50,),
                        borderRadius: BorderRadius.circular(28),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:10.0),
                      child: Text("#argentina fc"),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(color:Colors.white,width: 2.0),
                          borderRadius: BorderRadius.circular(28.0)
                      ),
                      child: ClipRRect(
                        child: Image.asset('images/messi.jpg',height: 50,width: 50,),
                        borderRadius: BorderRadius.circular(28),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:10.0),
                      child: Text("#fcb"),
                    )
                  ],
                ),                ],
            ),
          ),
          Container(

            child: Column(
              children: <Widget>[
                Container(
                  //todo: for line
                  width: MediaQuery.of(context).size.width,
                  height: 1,
                  color: Colors.white,
                  margin: EdgeInsets.only(left:15,right: 15,top: 5,bottom: 5),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[

                    Column(
                      children: <Widget>[
                        Text("9",style: TextStyle(fontSize: Constants.numberSize,fontWeight: FontWeight.bold),),
                        Text("posts",style: TextStyle(fontSize: Constants.numberSize),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text("164",style: TextStyle(fontSize: Constants.numberSize,fontWeight: FontWeight.bold),),
                        Text("followers",style: TextStyle(fontSize: Constants.numberSize),)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text("219",style: TextStyle(fontSize: Constants.numberSize,fontWeight: FontWeight.bold),),
                        Text("following",style: TextStyle(fontSize: Constants.numberSize),)
                      ],
                    ),

                  ],

                ),
                Container(
                  //todo: for line
                  width: MediaQuery.of(context).size.width,
                  height: 1,
                  color: Colors.white,
                  margin: EdgeInsets.only(left:15,right: 15,top: 5,bottom: 5),
                )
              ],
            ),
          ),Column(
            
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        height: 100,
                        width:150,
                        padding: const EdgeInsets.all(8),
                        child: const Text('He\'d have you all unravel at the'),
                        color: Colors.teal[100],
                      ),
                      Container(
                        height: 100,
                        padding: const EdgeInsets.all(8),
                        child: const Text('Heed not the rabble'),
                        color: Colors.teal[200],
                      ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
