import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:insta_ui/insta_clone_icons.dart';
import 'package:insta_ui/insta_ui/utils/constants.dart';

class SearchInsta extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SearchInstaState();
  }
}

class SearchInstaState extends State<SearchInsta> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: <Widget>[
          dynamiContent(),
          searchSelector(),
          imageGrid(),
        ],
      ),
    );
  }




  Widget dynamiContent(){
    return AppBar(
      leading: Icon(Icons.search),
      title: Text("search...",style: TextStyle(color: Colors.white30),),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right:8.0),
          child: Icon(InstaClone.settings_overscan),
        )
      ],
    );
  }

  Widget searchSelector(){
    return SizedBox(
      height: 30,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
                height: 30,
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(width: 0.5, color: Colors.white),
                        left: BorderSide(width: 0.5, color: Colors.white),
                        bottom:
                        BorderSide(width: 0.5, color: Colors.white),
                        right:
                        BorderSide(width: 0.5, color: Colors.white)),
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "IGTV",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: Constants.textSize),
                    ),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
                height: 30,
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(width: 0.5, color: Colors.white),
                        left: BorderSide(width: 0.5, color: Colors.white),
                        bottom:
                        BorderSide(width: 0.5, color: Colors.white),
                        right:
                        BorderSide(width: 0.5, color: Colors.white)),
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "Food",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: Constants.textSize),
                    ),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
                height: 30,
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(width: 0.5, color: Colors.white),
                        left: BorderSide(width: 0.5, color: Colors.white),
                        bottom:
                        BorderSide(width: 0.5, color: Colors.white),
                        right:
                        BorderSide(width: 0.5, color: Colors.white)),
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "Gaming",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: Constants.textSize),
                    ),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
                height: 30,
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(width: 0.5, color: Colors.white),
                        left: BorderSide(width: 0.5, color: Colors.white),
                        bottom:
                        BorderSide(width: 0.5, color: Colors.white),
                        right:
                        BorderSide(width: 0.5, color: Colors.white)),
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "Travel",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: Constants.textSize),
                    ),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
                height: 30,
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(width: 0.5, color: Colors.white),
                        left: BorderSide(width: 0.5, color: Colors.white),
                        bottom:
                        BorderSide(width: 0.5, color: Colors.white),
                        right:
                        BorderSide(width: 0.5, color: Colors.white)),
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "TV & Movies",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: Constants.textSize),
                    ),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
                height: 30,
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(width: 0.5, color: Colors.white),
                        left: BorderSide(width: 0.5, color: Colors.white),
                        bottom:
                        BorderSide(width: 0.5, color: Colors.white),
                        right:
                        BorderSide(width: 0.5, color: Colors.white)),
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "IGTV",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: Constants.textSize),
                    ),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
                height: 30,
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(width: 0.5, color: Colors.white),
                        left: BorderSide(width: 0.5, color: Colors.white),
                        bottom:
                        BorderSide(width: 0.5, color: Colors.white),
                        right:
                        BorderSide(width: 0.5, color: Colors.white)),
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "Food",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: Constants.textSize),
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }

  Widget imageGrid(){
    return GridView.count(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      crossAxisCount: 2,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Image.asset(
            'images/mohan.jpg',
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Image.asset(
            'images/mohan.jpg',
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Image.asset(
            'images/second.jpeg',
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Image.asset(
            'images/messi.jpg',
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
        ),      Padding(
          padding: const EdgeInsets.all(2.0),
          child: Image.asset(
            'images/mohan.jpg',
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Image.asset(
            'images/mohan.jpg',
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
