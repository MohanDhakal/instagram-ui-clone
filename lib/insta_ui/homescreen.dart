import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_ui/insta_ui/fragments/fragments.dart';
import 'package:insta_ui/insta_ui/utils/constants.dart';
import 'package:insta_ui/insta_ui/utils/post.dart';
import 'package:insta_ui/my_flutter_app_icons.dart';

class Feed extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FeedState();
  }
}

class FeedState extends State<Feed> {
  Post getApost() {
    Post post = new Post();
    post.id = 1;
    post.caption = "fcbarcelona";
    post.imageList = Constants.piclist;
    return post;
  }

  @override
  Widget build(BuildContext context) {
    int selected_index = 0;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.linked_camera),
        title: Text(
          Constants.instagram,
          style: GoogleFonts.openSans(fontSize: 20, color: Colors.white),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 17.0),
            child: Icon(
              MyFlutterApp.near_me,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: (Fragments.allfragments).map((Fragments fragments) {
          return BottomNavigationBarItem(
            icon: Icon(fragments.icon),
            title: Text(fragments.title),
          );
        }),
        onTap: (index) {
          setState(() {
            selected_index = index;
          });
        },
        currentIndex: selected_index,
      ),
      body: Center(
          child: Column(
        children: <Widget>[StorySection(), singlePost()],
      )),
    );
  }

  Widget singlePost() {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 2, right: 2),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'images/argentina.jpg',
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover,
                )),
            trailing: Icon(Icons.menu),
            title: Text(
              getApost().caption,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            subtitle: Text(
              "Camp Nou",
              style: TextStyle(fontSize: 12),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: CarouselSlider.builder(
                //not giving a height would set aspect ratio to 16:9
                height: 400,
                viewportFraction: 1.0,
                itemCount: (getApost().imageList).length,
                itemBuilder: (context, index) {
                  return Image.asset(
                    getApost().imageList.elementAt(index),
                    width: double.infinity,
                    fit: BoxFit.cover,
                  );
                }),
          )
        ],
      ),
    );
  }

  Widget StorySection() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: Image.asset(
                          'images/messi.jpg',
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        )),
                  ),
                  Positioned(
                      left: 40,
                      top: 40,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: Colors.blue),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 20,
                        ),
                      )),
                ],
              ),
              Text("Your Story")
            ],
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Image.asset(
                      'images/messi.jpg',
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    )),
              ),
              Text("Your Story")
            ],
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Image.asset(
                      'images/messi.jpg',
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    )),
              ),
              Text("Your Story")
            ],
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Image.asset(
                      'images/messi.jpg',
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    )),
              ),
              Text("Your Story")
            ],
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Image.asset(
                      'images/messi.jpg',
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    )),
              ),
              Text("Your Story")
            ],
          ),
        ],
      ),
    );
  }
}
