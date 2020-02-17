import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    post.caption = "This is the first post ever";
    post.imageList = Constants.piclist;
    return post;
  }

  @override
  Widget build(BuildContext context) {
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
      body: Center(
          child: Column(
        children: <Widget>[StorySection(), singlePost()],
      )),
    );
  }

  Widget singlePost() {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(color: Colors.purple,borderRadius:BorderRadius.all(Radius.circular(5))),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'images/argentina.jpg',
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover,
                  )),
            ),
            trailing: Icon(Icons.menu),
            title: Text(
              getApost().caption,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            subtitle: Text(
              "camp nou",
              style: TextStyle(fontSize: 12),
            ),
          ),
          CarouselSlider.builder(
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
              })
        ],
      ),
    );
  }

  Widget StorySection() {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    24,
                  ),
                  child: Image.asset(
                    'images/messi.jpg',
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  )),
            ),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Image.asset(
                    'images/argentina.jpg',
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Image.asset(
                    'images/fc_barcelona.jpg',
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Image.asset(
                    'images/mohan.jpg',
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  )),
            ),
          ],
        )
      ],
    );
  }
}
