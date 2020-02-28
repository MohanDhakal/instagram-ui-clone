import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta_ui/insta_clone_icons.dart';
import 'package:insta_ui/insta_ui/activity.dart';
import 'package:insta_ui/insta_ui/fragments/fragments.dart';
import 'package:insta_ui/insta_ui/insta_direct.dart';
import 'package:insta_ui/insta_ui/profile.dart';
import 'package:insta_ui/insta_ui/search.dart';
import 'package:insta_ui/insta_ui/storydetail.dart';
import 'package:insta_ui/insta_ui/utils/constants.dart';
import 'package:insta_ui/insta_ui/utils/post.dart';

class Feed extends StatefulWidget {
  static const routeName = '/';

  @override
  State<StatefulWidget> createState() {
    return FeedState();
  }
}

class FeedState extends State<Feed> {
  int selectedIndex = 0;
  int _carouselIndex = 1;

  static List<Fragments> allfragments = <Fragments>[
    Fragments(
      'Home',
      Icons.home,
    ),
    Fragments(
      'Search',
      Icons.search,
    ),
    Fragments('Add', Icons.add),
    Fragments('Heart', InstaClone.favorite),
    Fragments("profile", Icons.perm_contact_calendar)
  ];

  Post getApost() {
    Post post = new Post();
    post.id = 1;
    post.caption = "fcbarcelona";
    post.imageList = Constants.piclist;
    return post;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Column(
          children: <Widget>[
            setSelectedWidget(this.selectedIndex),
            BottomNavigationBar(
              items: (allfragments).map((Fragments fragments) {
                return BottomNavigationBarItem(
                    icon: Icon(fragments.icon),
                    title: Text(fragments.title),
                    backgroundColor: Colors.black);
              }).toList(),
              onTap: (index) {
                setState(() {
                  this.selectedIndex = index;
                });
              },
              currentIndex: this.selectedIndex,
            ),
          ],
        ),
      ),
    );
  }

  Widget dynamiContent() {
    return AppBar(
      leading: Icon(InstaClone.camera),
      title: Text(
        Constants.instagram,
        style: GoogleFonts.openSans(fontSize: 20, color: Colors.white),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 17.0),
          child: InkWell(
            onTap: (){
              Navigator.pushNamed(context, InstaDirect.routeName);
            },
            child: Icon(
              InstaClone.direction,
            ),
          ),
        )
      ],
    );
  }

  Widget setSelectedWidget(index) {
    switch (index) {
      case 0:
        return Expanded(
          child: ListView(
            children: <Widget>[
              dynamiContent(),
              StorySection(),
              singlePost(),
              singlePost(),
            ],
          ),
        );
        break;
      case 1:
        return SearchInsta();
        break;
      case 2:
        return Expanded(
          child: ListView(
            children: <Widget>[
              AppBar(
                title: Text("Add Post"),
              ),
              Center(
                child: Text("It is Empty for now"),
              )
            ],
          ),
        );
        break;
      case 3:
        return Activity();
        break;
      case 4:
        return Profile();
      default:
        return singlePost();
    }
  }

  Widget singlePost() {
    return Material(
      child: Container(
        margin: EdgeInsets.only(top: 10, left: 2, right: 2),
        child: Column(
          children: <Widget>[
            Material(
              child: ListTile(
                leading: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'images/argentina.jpg',
                      height: 40,
                      width: 40,
                      fit: BoxFit.cover,
                    )),
                trailing: Icon(InstaClone.more_vert),
                title: Text(
                  getApost().caption,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                subtitle: Text(
                  "Camp Nou",
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
            Stack(
              children: <Widget>[
                CarouselSlider.builder(
                    //not giving a height would set aspect ratio to 16:9
                    height: 300,
                    viewportFraction: 1.0,
                    itemCount: (getApost().imageList).length,
                    onPageChanged: (index) {
                      setState(() {
                        _carouselIndex = ++index;
                      });
                    },
                    itemBuilder: (context, index) {
                      return Image.asset(
                        getApost().imageList.elementAt(index),
                        width: double.infinity,
                        fit: BoxFit.cover,
                      );
                    }),
                Positioned(
                    left: 280,
                    top: 50,
                    child: Container(
                        height: 30,
                        width: 50,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black26),
                        child: Text(
                          '$_carouselIndex/4',
                          style: TextStyle(color: Colors.white),
                        ))),
                Positioned(
                    left: 160,
                    top: 280,
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        Container(
                          height: 8,
                          margin: EdgeInsets.all(2),
                          width: 8,
                          decoration: BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        Container(
                          margin: EdgeInsets.all(3),
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.circular(4)),
                        ),
                      ],
                    )),
              ],
            ),
            likesComments()
          ],
        ),
      ),
    );
  }

  Widget StorySection() {
    return Material(
      child: Container(
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
                            'images/mohan.jpg',
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
                  child: Material(
                    child: InkWell(
                      onTap: () {
                        showStoryDetail();
                      },
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(24),
                          child: Image.asset(
                            'images/messi.jpg',
                            height: 50,
                            width: 50,
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                ),
                Text("Leo Messi")
              ],
            ),
            Column(
              children: <Widget>[
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
                Text("Argentina")
              ],
            ),
            Column(
              children: <Widget>[
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
                Text("FC Barca")
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
                Text("Antonella")
              ],
            ),
          ],
        ),
      ),
    );
  }

  int _likecount = 15;
  String _placeholderName = "mohandkl.512";

  Widget likesComments() {
    return Material(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 15),
                child: Icon(
                  InstaClone.favorite,
                  color: Colors.red,
                  size: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 15),
                child: Icon(
                  InstaClone.comment_alt2,
                  size: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 15),
                child: Icon(
                  InstaClone.direction,
                  size: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 180),
                child: Icon(
                  InstaClone.bookmark_empty,
                  color: Colors.black26,
                  size: 30,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0, top: 10),
            child: Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Image.asset(
                    'images/mohan.jpg',
                    height: 20,
                    width: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3.0),
                  child: Text(
                    "Liked by  ${_placeholderName} and  ${_likecount} others",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void showStoryDetail() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => StoryDetail()),
    );
  }
}
